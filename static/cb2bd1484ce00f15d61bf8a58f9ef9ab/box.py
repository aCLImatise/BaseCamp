from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Box_V0_1_0 = CommandToolBuilder(tool="box", base_command=["box"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_pdb_path", input_type=File(optional=True), prefix="--input_pdb_path", doc=InputDocumentation(doc="PDB file containing a selection of residue numbers or PQR file containing the pocket. Accepted formats: pdb, pqr.")), ToolInput(tag="in_output_pdb_path", input_type=File(optional=True), prefix="--output_pdb_path", doc=InputDocumentation(doc="PDB including the annotation of the box center and size as REMARKs. Accepted formats: pdb.\n"))], outputs=[ToolOutput(tag="out_output_pdb_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_pdb_path", type_hint=File()), doc=OutputDocumentation(doc="PDB including the annotation of the box center and size as REMARKs. Accepted formats: pdb.\n"))], container="quay.io/biocontainers/biobb_vs:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Box_V0_1_0().translate("wdl")

