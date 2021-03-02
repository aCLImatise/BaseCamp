from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Check_Compression_V0_1_0 = CommandToolBuilder(tool="check_compression", base_command=["check_compression"], inputs=[ToolInput(tag="in_input_path", input_type=File(optional=True), prefix="--input_path", doc=InputDocumentation(doc="Path to Fast5 file or directory of Fast5 files")), ToolInput(tag="in_check_all_reads", input_type=Boolean(optional=True), prefix="--check_all_reads", doc=InputDocumentation(doc="Check all reads in a file individually (default: check\nonly the first read)")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="Search recursively through folders for MultiRead fast5")), ToolInput(tag="in_tool", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_checking", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_compression", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_type", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_raw", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_data", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_five", input_type=Int(), position=10, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=11, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Compression_V0_1_0().translate("wdl", allow_empty_container=True)

