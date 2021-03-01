from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Runidba_Py_V0_1_0 = CommandToolBuilder(tool="runIDBA.py", base_command=["runIDBA.py"], inputs=[], outputs=[], container="quay.io/biocontainers/mitofinder:1.4--py27h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runidba_Py_V0_1_0().translate("wdl")

