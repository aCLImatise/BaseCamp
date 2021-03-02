from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Hydra_Router_V0_1_0 = CommandToolBuilder(tool="hydra_router", base_command=["hydra-router"], inputs=[ToolInput(tag="in_config", input_type=Boolean(optional=True), prefix="-config", doc=InputDocumentation(doc="Configuration file. (req'd)\nCol 1. Sample Id (string)\nCol 2. Mapping file (path/file)\nCol 3. Expected insert size (integer)\nCol 4. Variance (integer)\nCol 5. Num. variances (integer)")), ToolInput(tag="in_routed_list", input_type=File(optional=True), prefix="-routedList", doc=InputDocumentation(doc="Output file containing the list of routed files (req'd).")), ToolInput(tag="in_use_mappings", input_type=Boolean(optional=True), prefix="-useMappings", doc=InputDocumentation(doc="Don't count mappings, use the num_mappings fields.")), ToolInput(tag="in_hydra", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_routed_list", output_type=File(optional=True), selector=InputSelector(input_to_select="in_routed_list", type_hint=File()), doc=OutputDocumentation(doc="Output file containing the list of routed files (req'd)."))], container="quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hydra_Router_V0_1_0().translate("wdl")

