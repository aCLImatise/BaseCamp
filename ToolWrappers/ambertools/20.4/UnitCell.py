from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Unitcell_V0_1_0 = CommandToolBuilder(tool="UnitCell", base_command=["UnitCell"], inputs=[ToolInput(tag="in_structure_reassemble_pdb", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": the structure to reassemble (PDB format)")), ToolInput(tag="in_output_structure_pdb", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc=": the output structure (PDB format)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unitcell_V0_1_0().translate("wdl", allow_empty_container=True)

