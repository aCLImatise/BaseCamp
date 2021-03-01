from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Extract_Atoms_V0_1_0 = CommandToolBuilder(tool="extract_atoms", base_command=["extract_atoms"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_input_structure_path", input_type=File(optional=True), prefix="--input_structure_path", doc=InputDocumentation(doc="Input structure file name")), ToolInput(tag="in_output_structure_path", input_type=File(optional=True), prefix="--output_structure_path", doc=InputDocumentation(doc="Output structure file name\n"))], outputs=[ToolOutput(tag="out_output_structure_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_structure_path", type_hint=File()), doc=OutputDocumentation(doc="Output structure file name\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Atoms_V0_1_0().translate("wdl", allow_empty_container=True)

