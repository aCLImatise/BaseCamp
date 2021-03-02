from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

O_Smart_Trim_V0_1_0 = CommandToolBuilder(tool="o_smart_trim", base_command=["o-smart-trim"], inputs=[ToolInput(tag="in_min_percent", input_type=Int(optional=True), prefix="--min-percent", doc=InputDocumentation(doc="Even if there is only one read that is too short and\ntherefore full of gap characters, the first location\nin the alignment file that *every* read has a base\nwould have to match the length of that short read.\nWith this percentage you can specify what is the\npercentage of reads you expect to pass while this\ntrimming script tries to maximize the remaining read\nlength after trimming. Default is 95.00")), ToolInput(tag="in_from_end", input_type=Boolean(optional=True), prefix="--from-end", doc=InputDocumentation(doc="Trim from the end of the file")), ToolInput(tag="in_from_start", input_type=Boolean(optional=True), prefix="--from-start", doc=InputDocumentation(doc="Trim from the beginning of the file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Smart_Trim_V0_1_0().translate("wdl", allow_empty_container=True)

