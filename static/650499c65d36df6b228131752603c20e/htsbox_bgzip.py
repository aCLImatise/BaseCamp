from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Htsbox_Bgzip_V0_1_0 = CommandToolBuilder(tool="htsbox_bgzip", base_command=["htsbox", "bgzip"], inputs=[ToolInput(tag="in_write_keep_files", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="write on standard output, keep original files unchanged")), ToolInput(tag="in_decompress", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="decompress")), ToolInput(tag="in_overwrite_files_asking", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="overwrite files without asking")), ToolInput(tag="in_decompress_virtual_int", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="decompress at virtual file pointer INT")), ToolInput(tag="in_decompress_int_bytes", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="decompress INT bytes in the uncompressed file")), ToolInput(tag="in_b_gzip", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsbox_Bgzip_V0_1_0().translate("wdl", allow_empty_container=True)

