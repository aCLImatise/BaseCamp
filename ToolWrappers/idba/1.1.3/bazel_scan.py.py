from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bazel_Scan_Py_V0_1_0 = CommandToolBuilder(tool="bazel_scan.py", base_command=["bazel-scan.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bazel_Scan_Py_V0_1_0().translate("wdl", allow_empty_container=True)

