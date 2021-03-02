from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ice_Pbdagcon2_Py_V0_1_0 = CommandToolBuilder(tool="ice_pbdagcon2.py", base_command=["ice_pbdagcon2.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ice_Pbdagcon2_Py_V0_1_0().translate("wdl", allow_empty_container=True)

