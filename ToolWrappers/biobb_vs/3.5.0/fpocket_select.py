from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Fpocket_Select_V0_1_0 = CommandToolBuilder(tool="fpocket_select", base_command=["fpocket_select"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_pockets_zip", input_type=File(optional=True), prefix="--input_pockets_zip", doc=InputDocumentation(doc="Path to all the pockets found by fpocket. Accepted formats: zip.")), ToolInput(tag="in_output_pocket_pdb", input_type=File(optional=True), prefix="--output_pocket_pdb", doc=InputDocumentation(doc="Path to the PDB file with the cavity found by fpocket. Accepted formats: pdb.")), ToolInput(tag="in_output_pocket_pqr", input_type=File(optional=True), prefix="--output_pocket_pqr", doc=InputDocumentation(doc="Path to the PQR file with the pocket found by fpocket. Accepted formats: pqr.\n"))], outputs=[], container="quay.io/biocontainers/biobb_vs:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fpocket_Select_V0_1_0().translate("wdl")

