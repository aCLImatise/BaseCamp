from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Super_Distance_V0_1_0 = CommandToolBuilder(tool="super_distance", base_command=["super_distance"], inputs=[ToolInput(tag="in_fast", input_type=Boolean(optional=True), prefix="--fast", doc=InputDocumentation(doc="for too many leaves, estimates only two species trees")), ToolInput(tag="in_epsilon", input_type=Int(optional=True), prefix="--epsilon", doc=InputDocumentation(doc="tolerance (small value below which a branch length is considered zero for nodal distances)")), ToolInput(tag="in_species", input_type=File(optional=True), prefix="--species", doc=InputDocumentation(doc="file with species names, one per line (comments in square braces allowed); if absent, orthology is assumed")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file with species supertrees, in newick format (default '-')"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file with species supertrees, in newick format (default '-')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Super_Distance_V0_1_0().translate("wdl", allow_empty_container=True)

