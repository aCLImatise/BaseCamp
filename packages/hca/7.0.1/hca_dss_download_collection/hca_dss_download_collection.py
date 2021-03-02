from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Hca_Dss_Download_Collection_V0_1_0 = CommandToolBuilder(tool="hca_dss_download_collection", base_command=["hca", "dss", "download-collection"], inputs=[ToolInput(tag="in_uuid", input_type=String(optional=True), prefix="--uuid", doc=InputDocumentation(doc="The uuid of the collection to download")), ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="the replica to download from. The supported\nreplicas are: aws for Amazon Web Services, and gcp for\nGoogle Cloud Platform. [aws, gcp]")), ToolInput(tag="in_download_dir", input_type=Directory(optional=True), prefix="--download-dir", doc=InputDocumentation(doc="The directory into which to download\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Download_Collection_V0_1_0().translate("wdl", allow_empty_container=True)

