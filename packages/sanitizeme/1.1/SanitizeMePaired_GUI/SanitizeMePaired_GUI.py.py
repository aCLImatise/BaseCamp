from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sanitizemepaired_Gui_Py_V0_1_0 = CommandToolBuilder(tool="SanitizeMePaired_GUI.py", base_command=["SanitizeMePaired_GUI.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sanitizemepaired_Gui_Py_V0_1_0().translate("wdl", allow_empty_container=True)

