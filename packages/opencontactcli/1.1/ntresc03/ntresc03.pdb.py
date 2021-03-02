from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ntresc03_Pdb_V0_1_0 = CommandToolBuilder(tool="ntresc03.pdb", base_command=["ntresc03.pdb"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ntresc03_Pdb_V0_1_0().translate("wdl", allow_empty_container=True)

