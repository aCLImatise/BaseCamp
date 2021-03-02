from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Uropa_Summary_R_V0_1_0 = CommandToolBuilder(tool="uropa_summary.R", base_command=["uropa_summary.R"], inputs=[ToolInput(tag="in_final_hits", input_type=Boolean(optional=True), prefix="--finalhits", doc=InputDocumentation(doc="file containing the final hits from UROPA.")), ToolInput(tag="in_config", input_type=Boolean(optional=True), prefix="--config", doc=InputDocumentation(doc="file containing the json formatted configuration from the UROPA run.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="file name of output file [summary.pdf].")), ToolInput(tag="in_all_hits", input_type=Boolean(optional=True), prefix="--allhits", doc=InputDocumentation(doc="file containing all hits from UROPA.")), ToolInput(tag="in_call", input_type=Boolean(optional=True), prefix="--call", doc=InputDocumentation(doc="original command line call."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="file name of output file [summary.pdf]."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Uropa_Summary_R_V0_1_0().translate("wdl", allow_empty_container=True)

