from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Extract_Protein_V0_1_0 = CommandToolBuilder(tool="extract_protein", base_command=["extract_protein"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_input_structure_path", input_type=File(optional=True), prefix="--input_structure_path", doc=InputDocumentation(doc="Input structure file path. Accepted formats: pdb.")), ToolInput(tag="in_output_protein_path", input_type=File(optional=True), prefix="--output_protein_path", doc=InputDocumentation(doc="Output heteroatom file path. Accepted formats: pdb.\n"))], outputs=[ToolOutput(tag="out_output_protein_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_protein_path", type_hint=File()), doc=OutputDocumentation(doc="Output heteroatom file path. Accepted formats: pdb.\n"))], container="quay.io/biocontainers/biobb_structure_utils:3.5.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Protein_V0_1_0().translate("wdl")

