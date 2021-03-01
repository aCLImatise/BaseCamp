from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_Icepartial2_Py_V0_1_0 = CommandToolBuilder(tool="run_IcePartial2.py", base_command=["run_IcePartial2.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Icepartial2_Py_V0_1_0().translate("wdl", allow_empty_container=True)

