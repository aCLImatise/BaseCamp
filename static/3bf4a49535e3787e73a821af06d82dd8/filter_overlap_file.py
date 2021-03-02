from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Filter_Overlap_File_V0_1_0 = CommandToolBuilder(tool="filter_overlap_file", base_command=["filter_overlap_file"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (1)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file (/dev/fd/1)")), ToolInput(tag="in_dump", input_type=Boolean(optional=True), prefix="--dump", doc=InputDocumentation(doc="Fragment in raw -dumpfragment format (false)")), ToolInput(tag="in_filter_overlap_file_cmdline", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fragments", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file (/dev/fd/1)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Overlap_File_V0_1_0().translate("wdl", allow_empty_container=True)

