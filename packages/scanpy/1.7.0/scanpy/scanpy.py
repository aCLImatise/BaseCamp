from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Scanpy_V0_1_0 = CommandToolBuilder(tool="scanpy", base_command=["scanpy"], inputs=[], outputs=[], container="quay.io/biocontainers/scanpy:1.7.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scanpy_V0_1_0().translate("wdl")

