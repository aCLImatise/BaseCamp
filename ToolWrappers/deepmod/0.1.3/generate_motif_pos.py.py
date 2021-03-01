from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Generate_Motif_Pos_Py_V0_1_0 = CommandToolBuilder(tool="generate_motif_pos.py", base_command=["generate_motif_pos.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Motif_Pos_Py_V0_1_0().translate("wdl", allow_empty_container=True)

