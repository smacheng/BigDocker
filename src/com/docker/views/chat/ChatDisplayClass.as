package com.docker.views.chat
{
	import mx.containers.ViewStack;
	import mx.controls.TextArea;
	
	import com.docker.model.*;
	
	public class ChatDisplayClass extends ViewStack
	{
		/**
		* 
		*/		
		private var model : ModelLocator = ModelLocator.getInstance();	
		
		[Bindable]
		/**
		* 
		*/		
		public var chat : Chat = model.chat;
		/**
		* 
		*/		
		public var status_txt : TextArea;
		
		[Bindable]
		public var chat_message : String="\n Can't play stream, not connected to server";
		/**
		 * 
		 * 
		 */		
		public function updateScroll () : void 
		{
			//
			status_txt.verticalScrollPosition = status_txt.maxVerticalScrollPosition;
		}

	}
}