from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Directory, Boolean

Gdtools_Download_V0_1_0 = CommandToolBuilder(tool="gdtools_DOWNLOAD", base_command=["gdtools", "DOWNLOAD"], inputs=[ToolInput(tag="in_login", input_type=String(optional=True), prefix="--login", doc=InputDocumentation(doc="Login user:password information for private server access.")), ToolInput(tag="in_download_dir", input_type=File(optional=True), prefix="--download-dir", doc=InputDocumentation(doc="Output directory to download file to. (DEFAULT=02_Downloads)")), ToolInput(tag="in_genome_diff_dir", input_type=Directory(optional=True), prefix="--genome-diff-dir", doc=InputDocumentation(doc="Directory to search for genome diff files. (DEFAULT=01_Data)")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="Test urls in genome diff files, doesn't download the file")), ToolInput(tag="in_reference_only", input_type=Boolean(optional=True), prefix="--reference-only", doc=InputDocumentation(doc="Only downloads the reference sequence files for this file")), ToolInput(tag="in_un_gzip", input_type=Boolean(optional=True), prefix="--ungzip", doc=InputDocumentation(doc="Decompress gzipped read files"))], outputs=[ToolOutput(tag="out_download_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_download_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory to download file to. (DEFAULT=02_Downloads)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Download_V0_1_0().translate("wdl", allow_empty_container=True)

