from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Detect_Events_Py_V0_1_0 = CommandToolBuilder(tool="detect_events.py", base_command=["detect_events.py"], inputs=[], outputs=[], container="quay.io/biocontainers/chromeister:1.5.a--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Detect_Events_Py_V0_1_0().translate("wdl")

