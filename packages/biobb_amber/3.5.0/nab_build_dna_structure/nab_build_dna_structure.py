from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Nab_Build_Dna_Structure_V0_1_0 = CommandToolBuilder(tool="nab_build_dna_structure", base_command=["nab_build_dna_structure"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_output_pdb_path", input_type=File(optional=True), prefix="--output_pdb_path", doc=InputDocumentation(doc="Linear (unfolded) 3D structure PDB file. Accepted formats: pdb.\n"))], outputs=[ToolOutput(tag="out_output_pdb_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_pdb_path", type_hint=File()), doc=OutputDocumentation(doc="Linear (unfolded) 3D structure PDB file. Accepted formats: pdb.\n"))], container="quay.io/biocontainers/biobb_amber:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nab_Build_Dna_Structure_V0_1_0().translate("wdl")

