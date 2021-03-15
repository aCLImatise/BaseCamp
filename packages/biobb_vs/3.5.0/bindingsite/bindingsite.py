from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Bindingsite_V0_1_0 = CommandToolBuilder(tool="bindingsite", base_command=["bindingsite"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_pdb_path", input_type=File(optional=True), prefix="--input_pdb_path", doc=InputDocumentation(doc="Path to the PDB structure where the binding site is to be found. Accepted formats: pdb.")), ToolInput(tag="in_input_clusters_zip", input_type=File(optional=True), prefix="--input_clusters_zip", doc=InputDocumentation(doc="Path to the ZIP file with all the PDB members of the identity cluster. Accepted formats: zip.")), ToolInput(tag="in_output_pdb_path", input_type=File(optional=True), prefix="--output_pdb_path", doc=InputDocumentation(doc="Path to the PDB containig the residues belonging to the binding site. Accepted formats: pdb.\n"))], outputs=[ToolOutput(tag="out_output_pdb_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_pdb_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the PDB containig the residues belonging to the binding site. Accepted formats: pdb.\n"))], container="quay.io/biocontainers/biobb_vs:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bindingsite_V0_1_0().translate("wdl")

