from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Add_Pdb_V0_1_0 = CommandToolBuilder(tool="add_pdb", base_command=["add_pdb"], inputs=[ToolInput(tag="in_guess", input_type=Boolean(optional=True), prefix="-guess", doc=InputDocumentation(doc=": Guess atomic elements when absent from the PDB file.\n(default assumes proper element-aligned names)")), ToolInput(tag="in_prm_top", input_type=String(), position=0, doc=InputDocumentation(doc=": amber topology")), ToolInput(tag="in_pdb", input_type=String(), position=1, doc=InputDocumentation(doc=": matching PDB file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Pdb_V0_1_0().translate("wdl", allow_empty_container=True)

