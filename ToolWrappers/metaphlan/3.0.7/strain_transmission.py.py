from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory, Boolean, Float

Strain_Transmission_Py_V0_1_0 = CommandToolBuilder(tool="strain_transmission.py", base_command=["strain_transmission.py"], inputs=[ToolInput(tag="in_tree", input_type=File(optional=True), prefix="--tree", doc=InputDocumentation(doc="The input tree file")), ToolInput(tag="in_metadata", input_type=String(optional=True), prefix="--metadata", doc=InputDocumentation(doc="The input metadata")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="The output directory")), ToolInput(tag="in_save_dist", input_type=Boolean(optional=True), prefix="--save_dist", doc=InputDocumentation(doc="[Optional] Save the PhyPhlAn pairwise distances file")), ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="[Optional] A custom distribution threshold value.\nDefault: 0.01\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="The output directory"))], container="quay.io/biocontainers/metaphlan:3.0.7--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strain_Transmission_Py_V0_1_0().translate("wdl")

