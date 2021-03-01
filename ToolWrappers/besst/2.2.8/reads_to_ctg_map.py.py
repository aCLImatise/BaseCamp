from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Reads_To_Ctg_Map_Py_V0_1_0 = CommandToolBuilder(tool="reads_to_ctg_map.py", base_command=["reads_to_ctg_map.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reads_To_Ctg_Map_Py_V0_1_0().translate("wdl", allow_empty_container=True)

