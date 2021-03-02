from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Mergebreakpoints_Py_V0_1_0 = CommandToolBuilder(tool="mergeBreakpoints.py", base_command=["mergeBreakpoints.py"], inputs=[ToolInput(tag="in_hydra_final_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Hydra .final file")), ToolInput(tag="in_hydra_detail_file", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="Hydra .detail file")), ToolInput(tag="in_merged_final_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Merged final file")), ToolInput(tag="in_maximum_distance_allowed", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Maximum distance allowed for two flanking breakpoints to be\nmerged.\n")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergebreakpoints_Py_V0_1_0().translate("wdl")

