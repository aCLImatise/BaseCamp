from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Firstbuildchecker_Py_V0_1_0 = CommandToolBuilder(tool="FirstBuildChecker.py", base_command=["FirstBuildChecker.py"], inputs=[], outputs=[], container="quay.io/biocontainers/mitofinder:1.4--py27h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Firstbuildchecker_Py_V0_1_0().translate("wdl")

