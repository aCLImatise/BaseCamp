from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Prepare_Ligand4_Py_V0_1_0 = CommandToolBuilder(tool="prepare_ligand4.py", base_command=["prepare_ligand4.py"], inputs=[ToolInput(tag="in_ligandfilename_pdb_format", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="ligand_filename (.pdb or .mol2 or .pdbq format)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prepare_Ligand4_Py_V0_1_0().translate("wdl", allow_empty_container=True)

