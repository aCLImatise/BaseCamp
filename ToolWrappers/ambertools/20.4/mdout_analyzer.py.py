from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mdout_Analyzer_Py_V0_1_0 = CommandToolBuilder(tool="mdout_analyzer.py", base_command=["mdout_analyzer.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mdout_Analyzer_Py_V0_1_0().translate("wdl", allow_empty_container=True)

