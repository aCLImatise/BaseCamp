from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Rtg_Bgzip_V0_1_0 = CommandToolBuilder(tool="rtg_bgzip", base_command=["rtg", "bgzip"], inputs=[ToolInput(tag="in_compression_level", input_type=Int(optional=True), prefix="--compression-level", doc=InputDocumentation(doc="the compression level to use, between 1 (least\nbut fast) and 9 (highest but slow) (Default is 5)")), ToolInput(tag="in_decompress", input_type=Boolean(optional=True), prefix="--decompress", doc=InputDocumentation(doc="decompress")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="force overwrite of existing output file")), ToolInput(tag="in_no_terminate", input_type=Boolean(optional=True), prefix="--no-terminate", doc=InputDocumentation(doc="if set, do not add the block gzip termination")), ToolInput(tag="in_block", input_type=String(), position=0, doc=InputDocumentation(doc="-c, --stdout                write on standard output, keep original files"))], outputs=[ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="force overwrite of existing output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Bgzip_V0_1_0().translate("wdl", allow_empty_container=True)

