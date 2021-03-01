from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ctresc03N_Pdb_V0_1_0 = CommandToolBuilder(tool="ctresc03n.pdb", base_command=["ctresc03n.pdb"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ctresc03N_Pdb_V0_1_0().translate("wdl", allow_empty_container=True)

