from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Renumber_Structure_V0_1_0 = CommandToolBuilder(tool="renumber_structure", base_command=["renumber_structure"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_input_structure_path", input_type=File(optional=True), prefix="--input_structure_path", doc=InputDocumentation(doc="Input structure file name")), ToolInput(tag="in_output_structure_path", input_type=File(optional=True), prefix="--output_structure_path", doc=InputDocumentation(doc="Output structure file name")), ToolInput(tag="in_output_mapping_json_path", input_type=File(optional=True), prefix="--output_mapping_json_path", doc=InputDocumentation(doc="Output mapping json file name\n"))], outputs=[ToolOutput(tag="out_output_structure_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_structure_path", type_hint=File()), doc=OutputDocumentation(doc="Output structure file name")), ToolOutput(tag="out_output_mapping_json_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_mapping_json_path", type_hint=File()), doc=OutputDocumentation(doc="Output mapping json file name\n"))], container="quay.io/biocontainers/biobb_structure_utils:3.5.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Renumber_Structure_V0_1_0().translate("wdl")

