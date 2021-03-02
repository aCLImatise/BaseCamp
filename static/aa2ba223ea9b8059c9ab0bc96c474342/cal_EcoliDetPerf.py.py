from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cal_Ecolidetperf_Py_V0_1_0 = CommandToolBuilder(tool="cal_EcoliDetPerf.py", base_command=["cal_EcoliDetPerf.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cal_Ecolidetperf_Py_V0_1_0().translate("wdl", allow_empty_container=True)

