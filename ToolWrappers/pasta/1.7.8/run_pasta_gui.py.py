from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_Pasta_Gui_Py_V0_1_0 = CommandToolBuilder(tool="run_pasta_gui.py", base_command=["run_pasta_gui.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Pasta_Gui_Py_V0_1_0().translate("wdl", allow_empty_container=True)

