from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ztr_Dump_V0_1_0 = CommandToolBuilder(tool="ztr_dump", base_command=["ztr_dump"], inputs=[], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ztr_Dump_V0_1_0().translate("wdl")

