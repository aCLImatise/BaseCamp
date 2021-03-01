from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Motif_Display_Py_V0_1_0 = CommandToolBuilder(tool="motif_display.py", base_command=["motif_display.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motif_Display_Py_V0_1_0().translate("wdl", allow_empty_container=True)

