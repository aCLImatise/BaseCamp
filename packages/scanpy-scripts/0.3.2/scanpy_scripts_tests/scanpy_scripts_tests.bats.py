from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Scanpy_Scripts_Tests_Bats_V0_1_0 = CommandToolBuilder(tool="scanpy_scripts_tests.bats", base_command=["scanpy-scripts-tests.bats"], inputs=[], outputs=[], container="quay.io/biocontainers/scanpy-scripts:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scanpy_Scripts_Tests_Bats_V0_1_0().translate("wdl")

