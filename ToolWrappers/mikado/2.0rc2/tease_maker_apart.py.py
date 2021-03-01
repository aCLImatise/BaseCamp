from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tease_Maker_Apart_Py_V0_1_0 = CommandToolBuilder(tool="tease_maker_apart.py", base_command=["tease_maker_apart.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tease_Maker_Apart_Py_V0_1_0().translate("wdl", allow_empty_container=True)

