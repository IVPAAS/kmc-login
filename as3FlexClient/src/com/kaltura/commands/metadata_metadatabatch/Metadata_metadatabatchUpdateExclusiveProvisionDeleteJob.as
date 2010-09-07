package com.kaltura.commands.metadata_metadatabatch
{
	import com.kaltura.vo.KalturaExclusiveLockKey;
	import com.kaltura.vo.KalturaBatchJob;
	import com.kaltura.delegates.metadata_metadatabatch.Metadata_metadatabatchUpdateExclusiveProvisionDeleteJobDelegate;
	import com.kaltura.net.KalturaCall;

	public class Metadata_metadatabatchUpdateExclusiveProvisionDeleteJob extends KalturaCall
	{
		public var filterFields : String;
		public function Metadata_metadatabatchUpdateExclusiveProvisionDeleteJob( id : int,lockKey : KalturaExclusiveLockKey,job : KalturaBatchJob )
		{
			service= 'metadata_metadatabatch';
			action= 'updateExclusiveProvisionDeleteJob';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push( 'id' );
			valueArr.push( id );
 			keyValArr = kalturaObject2Arrays(lockKey,'lockKey');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
 			keyValArr = kalturaObject2Arrays(job,'job');
			keyArr = keyArr.concat( keyValArr[0] );
			valueArr = valueArr.concat( keyValArr[1] );
			applySchema( keyArr , valueArr );
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields',filterFields);
			delegate = new Metadata_metadatabatchUpdateExclusiveProvisionDeleteJobDelegate( this , config );
		}
	}
}
