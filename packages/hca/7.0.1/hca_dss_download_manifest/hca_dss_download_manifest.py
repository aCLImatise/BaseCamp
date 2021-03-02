from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int, Directory

Hca_Dss_Download_Manifest_V0_1_0 = CommandToolBuilder(tool="hca_dss_download_manifest", base_command=["hca", "dss", "download-manifest"], inputs=[ToolInput(tag="in_manifest", input_type=File(optional=True), prefix="--manifest", doc=InputDocumentation(doc="The path to a TSV (tab-separated values) file listing files to download. If the directory\nfor download already contains the manifest, the manifest will be overwritten to include a column with paths\ninto the filestore.")), ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="The replica from which to download. The supported replicas are: aws for Amazon Web\nServices, and gcp for Google Cloud Platform. [aws, gcp]")), ToolInput(tag="in_layout", input_type=String(optional=True), prefix="--layout", doc=InputDocumentation(doc="The layout of the downloaded files. Currently two options are supported, 'none' (the\ndefault), and 'bundle'.")), ToolInput(tag="in_no_metadata", input_type=Boolean(optional=True), prefix="--no-metadata", doc=InputDocumentation(doc="Exclude metadata files. Cannot be set when --metadata-filter is also set.")), ToolInput(tag="in_no_data", input_type=Boolean(optional=True), prefix="--no-data", doc=InputDocumentation(doc="Exclude data files. Cannot be set when --data-filter is also set.")), ToolInput(tag="in_num_retries", input_type=Int(optional=True), prefix="--num-retries", doc=InputDocumentation(doc="The initial quota of download failures to accept before exiting due to\nfailures. The number of retries increase and decrease as file chucks succeed and fail.")), ToolInput(tag="in_min_delay_seconds", input_type=Int(optional=True), prefix="--min-delay-seconds", doc=InputDocumentation(doc="The minimum number of seconds to wait in between retries for downloading any\nfile")), ToolInput(tag="in_download_dir", input_type=Directory(optional=True), prefix="--download-dir", doc=InputDocumentation(doc="The directory into which to download\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Download_Manifest_V0_1_0().translate("wdl", allow_empty_container=True)

