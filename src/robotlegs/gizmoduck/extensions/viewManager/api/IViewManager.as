//------------------------------------------------------------------------------
//  Copyright (c) 2009-2013 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.gizmoduck.extensions.viewManager.api
{
	import starling.display.DisplayObjectContainer;
	import starling.events.IEventDispatcher;

	[Event(name="containerAdd", type="robotlegs.gizmoduck.extensions.viewManager.impl.ViewManagerEvent")]
	[Event(name="containerRemove", type="robotlegs.gizmoduck.extensions.viewManager.impl.ViewManagerEvent")]
	[Event(name="handlerAdd", type="robotlegs.gizmoduck.extensions.viewManager.impl.ViewManagerEvent")]
	[Event(name="handlerRemove", type="robotlegs.gizmoduck.extensions.viewManager.impl.ViewManagerEvent")]
	/**
	 * The View Manager allows you to add multiple "view root" containers to a context
	 */
	public interface IViewManager extends IEventDispatcher
	{

		/**
		 * A list of currently registered container
		 */
		function get containers():Vector.<DisplayObjectContainer>;

		/**
		 * Adds a container as a "view root" into the context
		 * @param container
		 */
		function addContainer(container:DisplayObjectContainer):void;

		/**
		 * Removes a container from this context
		 * @param container
		 */
		function removeContainer(container:DisplayObjectContainer):void;

		/**
		 * Registers a view handler
		 * @param handler
		 */
		function addViewHandler(handler:IViewHandler):void;

		/**
		 * Removes a view handler
		 * @param handler
		 */
		function removeViewHandler(handler:IViewHandler):void;

		/**
		 * Removes all view handlers from this context
		 */
		function removeAllHandlers():void;
	}
}
