from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Besthit_To_Histogram_Py_V0_1_0 = CommandToolBuilder(tool="besthit_to_histogram.py", base_command=["besthit_to_histogram.py"], inputs=[], outputs=[], container="quay.io/biocontainers/nanosim:2.6.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Besthit_To_Histogram_Py_V0_1_0().translate("wdl")

