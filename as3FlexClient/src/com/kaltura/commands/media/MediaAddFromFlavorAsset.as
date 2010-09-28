package com.kaltura.commands.media
{
	import com.kaltura.vo.KalturaMediaEntry;
	import com.kaltura.delegates.media.MediaAddFromFlavorAssetDelegate;
	import com.kaltura.net.KalturaCall;

	public class MediaAddFromFlavorAsset extends KalturaCall
	{
		public var filterFields : String;
		public function MediaAddFromFlavorAsset( mediaEntry : KalturaMediaEntry=null,sourceFlavorAssetId : String )
		{
			if(mediaEntry== null)mediaEntry= new KalturaMediaEntry();
			service= 'media';
			action= 'addFromFlavorAsset';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			keyValArr = kalturaObject2Arrays(mediaEntry,'mediaEntry');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			keyArr.push( 'sourceFlavorAssetId' );
			valueArr.push( sourceFlavorAssetId );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new MediaAddFromFlavorAssetDelegate( this , config );
		}
	}
}
