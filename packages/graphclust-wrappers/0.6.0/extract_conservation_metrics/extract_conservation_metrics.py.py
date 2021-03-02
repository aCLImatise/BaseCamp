from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Extract_Conservation_Metrics_Py_V0_1_0 = CommandToolBuilder(tool="extract_conservation_metrics.py", base_command=["extract_conservation_metrics.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Conservation_Metrics_Py_V0_1_0().translate("wdl", allow_empty_container=True)

