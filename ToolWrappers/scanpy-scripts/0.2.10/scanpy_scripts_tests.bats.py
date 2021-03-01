from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Scanpy_Scripts_Tests_Bats_V0_1_0 = CommandToolBuilder(tool="scanpy_scripts_tests.bats", base_command=["scanpy-scripts-tests.bats"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scanpy_Scripts_Tests_Bats_V0_1_0().translate("wdl", allow_empty_container=True)

