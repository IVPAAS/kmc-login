package com.kaltura.delegates.metadata_metadatabatch
{
	import flash.utils.getDefinitionByName;
	import com.kaltura.config.KalturaConfig;
	import com.kaltura.net.KalturaCall;
	import com.kaltura.delegates.WebDelegateBase;
	public class Metadata_metadatabatchCleanExclusiveJobsDelegate extends WebDelegateBase
	{
		public function Metadata_metadatabatchCleanExclusiveJobsDelegate(call:KalturaCall, config:KalturaConfig)
		{
			super(call, config);
		}

		override public function parse( result : XML ) : *
		{
			return result.result.toString();
		}

	}
}
