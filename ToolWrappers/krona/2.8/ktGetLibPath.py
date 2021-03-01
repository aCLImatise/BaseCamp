from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ktgetlibpath_V0_1_0 = CommandToolBuilder(tool="ktGetLibPath", base_command=["ktGetLibPath"], inputs=[], outputs=[], container="quay.io/biocontainers/krona:2.8--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktgetlibpath_V0_1_0().translate("wdl")

