from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Axt_To_Lav_Py_V0_1_0 = CommandToolBuilder(tool="axt_to_lav.py", base_command=["axt_to_lav.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Axt_To_Lav_Py_V0_1_0().translate("wdl", allow_empty_container=True)

