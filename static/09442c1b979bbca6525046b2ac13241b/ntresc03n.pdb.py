from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ntresc03N_Pdb_V0_1_0 = CommandToolBuilder(tool="ntresc03n.pdb", base_command=["ntresc03n.pdb"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ntresc03N_Pdb_V0_1_0().translate("wdl", allow_empty_container=True)

