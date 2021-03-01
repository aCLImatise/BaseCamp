from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sanitizeme_Gui_Py_V0_1_0 = CommandToolBuilder(tool="SanitizeMe_GUI.py", base_command=["SanitizeMe_GUI.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sanitizeme_Gui_Py_V0_1_0().translate("wdl", allow_empty_container=True)

