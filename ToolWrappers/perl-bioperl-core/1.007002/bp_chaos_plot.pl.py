from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bp_Chaos_Plot_Pl_V0_1_0 = CommandToolBuilder(tool="bp_chaos_plot.pl", base_command=["bp_chaos_plot.pl"], inputs=[ToolInput(tag="in_graphics", input_type=File(optional=True), prefix="--graphics", doc=InputDocumentation(doc="TYPE")), ToolInput(tag="in_i", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_chaos_plot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_graphics", output_type=File(optional=True), selector=InputSelector(input_to_select="in_graphics", type_hint=File()), doc=OutputDocumentation(doc="TYPE"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Chaos_Plot_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

