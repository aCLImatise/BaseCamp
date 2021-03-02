from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Fix_Backbone_V0_1_0 = CommandToolBuilder(tool="fix_backbone", base_command=["fix_backbone"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_input_pdb_path", input_type=File(optional=True), prefix="--input_pdb_path", doc=InputDocumentation(doc="Input PDB file name")), ToolInput(tag="in_input_fast_a_canonical_sequence_path", input_type=File(optional=True), prefix="--input_fasta_canonical_sequence_path", doc=InputDocumentation(doc="Input FASTA file name")), ToolInput(tag="in_output_pdb_path", input_type=File(optional=True), prefix="--output_pdb_path", doc=InputDocumentation(doc="Output PDB file name\n"))], outputs=[ToolOutput(tag="out_output_pdb_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_pdb_path", type_hint=File()), doc=OutputDocumentation(doc="Output PDB file name\n"))], container="quay.io/biocontainers/biobb_model:3.5.1--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fix_Backbone_V0_1_0().translate("wdl")

