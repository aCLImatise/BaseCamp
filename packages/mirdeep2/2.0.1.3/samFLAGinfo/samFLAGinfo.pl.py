from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Samflaginfo_Pl_V0_1_0 = CommandToolBuilder(tool="samFLAGinfo.pl", base_command=["samFLAGinfo.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samflaginfo_Pl_V0_1_0().translate("wdl")

