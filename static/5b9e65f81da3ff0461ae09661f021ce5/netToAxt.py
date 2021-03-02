from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String, Float

Nettoaxt_V0_1_0 = CommandToolBuilder(tool="netToAxt", base_command=["netToAxt"], inputs=[ToolInput(tag="in_q_chain", input_type=Boolean(optional=True), prefix="-qChain", doc=InputDocumentation(doc="- net is with respect to the q side of chains.")), ToolInput(tag="in_max_gap", input_type=Int(optional=True), prefix="-maxGap", doc=InputDocumentation(doc="- maximum size of gap before breaking. Default 100")), ToolInput(tag="in_gap_out", input_type=File(optional=True), prefix="-gapOut", doc=InputDocumentation(doc="- Output gap sizes to file")), ToolInput(tag="in_no_split", input_type=Boolean(optional=True), prefix="-noSplit", doc=InputDocumentation(doc="- Don't split chain when there is an insertion of another chain")), ToolInput(tag="in_in_dotnet", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_chain", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_target_dot_two_bit", input_type=Float(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_dot_two_bit", input_type=Float(), position=3, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_gap_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_gap_out", type_hint=File()), doc=OutputDocumentation(doc="- Output gap sizes to file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nettoaxt_V0_1_0().translate("wdl", allow_empty_container=True)

