from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bg_Bpipe_V0_1_0 = CommandToolBuilder(tool="bg_bpipe", base_command=["bg-bpipe"], inputs=[], outputs=[], container="quay.io/biocontainers/bpipe:0.9.10--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bg_Bpipe_V0_1_0().translate("wdl")

