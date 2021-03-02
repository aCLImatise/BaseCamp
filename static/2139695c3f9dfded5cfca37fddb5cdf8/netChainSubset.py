from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Netchainsubset_V0_1_0 = CommandToolBuilder(tool="netChainSubset", base_command=["netChainSubset"], inputs=[ToolInput(tag="in_gap_out", input_type=File(optional=True), prefix="-gapOut", doc=InputDocumentation(doc="- Output gap sizes to file")), ToolInput(tag="in_type", input_type=File(optional=True), prefix="-type", doc=InputDocumentation(doc="- Restrict output to particular type in net file")), ToolInput(tag="in_split_on_insert", input_type=Boolean(optional=True), prefix="-splitOnInsert", doc=InputDocumentation(doc="- Split chain when get an insertion of another chain")), ToolInput(tag="in_whole_chains", input_type=Boolean(optional=True), prefix="-wholeChains", doc=InputDocumentation(doc="- Write entire chain references by net, don't split\nwhen a high-level net is encoundered.  This is useful when nets\nhave been filtered.")), ToolInput(tag="in_skip_missing", input_type=Boolean(optional=True), prefix="-skipMissing", doc=InputDocumentation(doc="- skip chains that are not found instead of generating\nan error.  Useful if chains have been filtered.\n")), ToolInput(tag="in_in_dotnet", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_chain", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_gap_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_gap_out", type_hint=File()), doc=OutputDocumentation(doc="- Output gap sizes to file")), ToolOutput(tag="out_type", output_type=File(optional=True), selector=InputSelector(input_to_select="in_type", type_hint=File()), doc=OutputDocumentation(doc="- Restrict output to particular type in net file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Netchainsubset_V0_1_0().translate("wdl", allow_empty_container=True)

