from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Mimodd_Info_V0_1_0 = CommandToolBuilder(tool="mimodd_info", base_command=["mimodd", "info"], inputs=[ToolInput(tag="in_ofile", input_type=File(optional=True), prefix="--ofile", doc=InputDocumentation(doc="redirect the output to the specified file (default:\nstdout)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose output")), ToolInput(tag="in_o_format", input_type=String(optional=True), prefix="--oformat", doc=InputDocumentation(doc="|txt    format for the output (default: txt)")), ToolInput(tag="in_info", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_ofile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_ofile", type_hint=File()), doc=OutputDocumentation(doc="redirect the output to the specified file (default:\nstdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mimodd_Info_V0_1_0().translate("wdl", allow_empty_container=True)

