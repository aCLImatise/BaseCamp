from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Float

Dpocket_V0_1_0 = CommandToolBuilder(tool="dpocket", base_command=["dpocket"], inputs=[ToolInput(tag="in_prefix_output_", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": Prefix of the output file.               (./dpout_*)")), ToolInput(tag="in_use_first_default", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc=": Use the first protein-ligand explicit\ninterface definition (default).")), ToolInput(tag="in_use_second_definition", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc=": Use the second protein-ligand explicit\ninterface definition.")), ToolInput(tag="in_distance_criteria_chooseninterface", input_type=Float(optional=True), prefix="-d", doc=InputDocumentation(doc=": Distance criteria for the choosen\ninterface definition.                          (4.0)"))], outputs=[ToolOutput(tag="out_prefix_output_", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix_output_", type_hint=File()), doc=OutputDocumentation(doc=": Prefix of the output file.               (./dpout_*)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dpocket_V0_1_0().translate("wdl", allow_empty_container=True)

