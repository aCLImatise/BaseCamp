from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File

Cpinsim_Parse_V0_1_0 = CommandToolBuilder(tool="cpinsim_parse", base_command=["cpinsim", "parse"], inputs=[ToolInput(tag="in_interactions_without_constraints", input_type=Array(t=String(), optional=True), prefix="--interactions_without_constraints", doc=InputDocumentation(doc="Files containing the annotated pairwise interactions.")), ToolInput(tag="in_competitions", input_type=Array(t=String(), optional=True), prefix="--competitions", doc=InputDocumentation(doc="Files containing the annotated competitions.")), ToolInput(tag="in_allosteric_effects", input_type=Array(t=String(), optional=True), prefix="--allosteric_effects", doc=InputDocumentation(doc="Files containing the annotated allosteric effects.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file containing the parsed proteins.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file containing the parsed proteins.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cpinsim_Parse_V0_1_0().translate("wdl", allow_empty_container=True)

