from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Tobias_Maxpos_V0_1_0 = CommandToolBuilder(tool="TOBIAS_MaxPos", base_command=["TOBIAS", "MaxPos"], inputs=[ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="--bed", doc=InputDocumentation(doc="Regions to search for max position within")), ToolInput(tag="in_bigwig", input_type=Boolean(optional=True), prefix="--bigwig", doc=InputDocumentation(doc="Scores used to identify maximum value")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to output .bed-file (default: scored sites are written to stdout)")), ToolInput(tag="in_invert", input_type=Boolean(optional=True), prefix="--invert", doc=InputDocumentation(doc="Find minimum position instead of maximum position"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to output .bed-file (default: scored sites are written to stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tobias_Maxpos_V0_1_0().translate("wdl", allow_empty_container=True)

