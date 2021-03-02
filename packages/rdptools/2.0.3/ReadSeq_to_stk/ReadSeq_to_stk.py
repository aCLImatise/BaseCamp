from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Readseq_To_Stk_V0_1_0 = CommandToolBuilder(tool="ReadSeq_to_stk", base_command=["ReadSeq", "to-stk"], inputs=[ToolInput(tag="in_header", input_type=File(optional=True), prefix="--header", doc=InputDocumentation(doc="the header of the output file in case a differenet\nstk version, default is # STOCKHOLM 1.0")), ToolInput(tag="in_remove_ref", input_type=Boolean(optional=True), prefix="--removeref", doc=InputDocumentation(doc="is set, do not write the GC reference sequences to\noutput\n")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_header", output_type=File(optional=True), selector=InputSelector(input_to_select="in_header", type_hint=File()), doc=OutputDocumentation(doc="the header of the output file in case a differenet\nstk version, default is # STOCKHOLM 1.0"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readseq_To_Stk_V0_1_0().translate("wdl", allow_empty_container=True)

