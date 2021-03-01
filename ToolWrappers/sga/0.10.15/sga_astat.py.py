from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sga_Astat_Py_V0_1_0 = CommandToolBuilder(tool="sga_astat.py", base_command=["sga-astat.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Astat_Py_V0_1_0().translate("wdl", allow_empty_container=True)

