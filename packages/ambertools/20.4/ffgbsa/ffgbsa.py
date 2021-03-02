from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ffgbsa_V0_1_0 = CommandToolBuilder(tool="ffgbsa", base_command=["ffgbsa"], inputs=[ToolInput(tag="in_pdb", input_type=String(), position=0, doc=InputDocumentation(doc="= PDB file name")), ToolInput(tag="in_prm", input_type=String(), position=1, doc=InputDocumentation(doc="= parameter-topology file name")), ToolInput(tag="in_gb_flag", input_type=String(), position=2, doc=InputDocumentation(doc="= integer (1, 2, 5, 7 or 8 for GB ON, else OFF)")), ToolInput(tag="in_sa_flag", input_type=String(), position=3, doc=InputDocumentation(doc="= integer (0 for SA OFF, 1 for SA ON)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ffgbsa_V0_1_0().translate("wdl", allow_empty_container=True)

