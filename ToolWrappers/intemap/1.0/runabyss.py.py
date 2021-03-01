from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Runabyss_Py_V0_1_0 = CommandToolBuilder(tool="runabyss.py", base_command=["runabyss.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runabyss_Py_V0_1_0().translate("wdl", allow_empty_container=True)

