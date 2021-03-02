from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Minab_V0_1_0 = CommandToolBuilder(tool="minab", base_command=["minab"], inputs=[ToolInput(tag="in_pdb", input_type=String(), position=0, doc=InputDocumentation(doc="= PDB file with initial coordinates")), ToolInput(tag="in_prm", input_type=String(), position=1, doc=InputDocumentation(doc="= parameter-topology file name")), ToolInput(tag="in_out_pdb", input_type=String(), position=2, doc=InputDocumentation(doc="= file name for refined coordinates (PDB format)")), ToolInput(tag="in_gb_flag", input_type=String(), position=3, doc=InputDocumentation(doc="= integer (1, 2, 5, 7, or 8 for GB ON, else GB OFF)")), ToolInput(tag="in_niter", input_type=String(), position=4, doc=InputDocumentation(doc="= integer (number of iterations)")), ToolInput(tag="in_res_force", input_type=String(), position=0, doc=InputDocumentation(doc="= force constant for restraints (kcal/mol/A2)\n(must be given when restraints are specified!)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Minab_V0_1_0().translate("wdl", allow_empty_container=True)

