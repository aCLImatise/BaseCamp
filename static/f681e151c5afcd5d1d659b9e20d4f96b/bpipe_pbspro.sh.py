from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bpipe_Pbspro_Sh_V0_1_0 = CommandToolBuilder(tool="bpipe_pbspro.sh", base_command=["bpipe-pbspro.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/bpipe:0.9.10--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bpipe_Pbspro_Sh_V0_1_0().translate("wdl")

