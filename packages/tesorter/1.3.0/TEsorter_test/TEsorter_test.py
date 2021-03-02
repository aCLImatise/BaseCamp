from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tesorter_Test_V0_1_0 = CommandToolBuilder(tool="TEsorter_test", base_command=["TEsorter-test"], inputs=[], outputs=[], container="quay.io/biocontainers/tesorter:1.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tesorter_Test_V0_1_0().translate("wdl")

