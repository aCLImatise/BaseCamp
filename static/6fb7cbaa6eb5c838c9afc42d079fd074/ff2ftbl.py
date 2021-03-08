from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ff2Ftbl_V0_1_0 = CommandToolBuilder(tool="ff2ftbl", base_command=["ff2ftbl"], inputs=[], outputs=[], container="quay.io/biocontainers/influx_si:5.4.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ff2Ftbl_V0_1_0().translate("wdl")

