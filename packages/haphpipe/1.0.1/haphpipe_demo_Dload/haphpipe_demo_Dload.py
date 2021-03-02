from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Haphpipe_Demo_Dload_V0_1_0 = CommandToolBuilder(tool="haphpipe_demo_Dload", base_command=["haphpipe", "demo", "Dload"], inputs=[ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory (default: .)")), ToolInput(tag="in_ref_only", input_type=Boolean(optional=True), prefix="--refonly", doc=InputDocumentation(doc="Does not run entire demo, only pulls the reference files\n(default: False)\n")), ToolInput(tag="in_ha_ph_pipe", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_demo", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default: .)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haphpipe_Demo_Dload_V0_1_0().translate("wdl", allow_empty_container=True)

