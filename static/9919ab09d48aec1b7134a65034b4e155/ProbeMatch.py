from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Probematch_V0_1_0 = CommandToolBuilder(tool="ProbeMatch", base_command=["ProbeMatch"], inputs=[ToolInput(tag="in_max_dist", input_type=Int(optional=True), prefix="--maxDist", doc=InputDocumentation(doc="Give a max distance")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outFile", doc=InputDocumentation(doc="Write output to a file")), ToolInput(tag="in_primer_match", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_primer_list_vertical_line_primer_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Write output to a file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Probematch_V0_1_0().translate("wdl", allow_empty_container=True)

