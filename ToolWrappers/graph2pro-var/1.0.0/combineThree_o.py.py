from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Combinethree_O_Py_V0_1_0 = CommandToolBuilder(tool="combineThree_o.py", base_command=["combineThree_o.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combinethree_O_Py_V0_1_0().translate("wdl", allow_empty_container=True)

