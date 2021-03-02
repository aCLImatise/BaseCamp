from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Htsbox_Razip_V0_1_0 = CommandToolBuilder(tool="htsbox_razip", base_command=["htsbox", "razip"], inputs=[ToolInput(tag="in_write_keep_files", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="write on standard output, keep original files unchanged")), ToolInput(tag="in_decompress", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="decompress")), ToolInput(tag="in_list_compressed_file", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="list compressed file contents")), ToolInput(tag="in_decompress_int_position", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="decompress at INT position in the uncompressed file")), ToolInput(tag="in_decompress_int_bytes", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="decompress INT bytes in the uncompressed file")), ToolInput(tag="in_ra_zip", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsbox_Razip_V0_1_0().translate("wdl", allow_empty_container=True)

