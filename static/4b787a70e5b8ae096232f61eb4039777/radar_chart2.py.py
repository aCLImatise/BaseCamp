from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Radar_Chart2_Py_V0_1_0 = CommandToolBuilder(tool="radar_chart2.py", base_command=["radar_chart2.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Radar_Chart2_Py_V0_1_0().translate("wdl", allow_empty_container=True)

