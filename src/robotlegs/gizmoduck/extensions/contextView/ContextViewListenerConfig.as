//------------------------------------------------------------------------------
//  Copyright (c) 2009-2013 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.gizmoduck.extensions.contextView
{
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.gizmoduck.extensions.viewManager.api.IViewManager;

	/**
	 * This configuration file adds the ContextView to the viewManager.
	 *
	 * It requires that the ViewManagerExtension, ContextViewExtension
	 * and a ContextView have been installed.
	 */
	public class ContextViewListenerConfig implements IConfig
	{

		/*============================================================================*/
		/* Public Properties                                                          */
		/*============================================================================*/

		[Inject]
		public var contextView:ContextView;

		[Inject]
		public var viewManager:IViewManager;

		/*============================================================================*/
		/* Public Functions                                                           */
		/*============================================================================*/

		/**
		 * @inheritDoc
		 */
		public function configure():void
		{
			// Adds the Context View to the View Manager at startup
			viewManager.addContainer(contextView.view);
		}
	}
}
