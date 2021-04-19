from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clip_Adapters_Pl_V0_1_0 = CommandToolBuilder(tool="clip_adapters.pl", base_command=["clip_adapters.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clip_Adapters_Pl_V0_1_0().translate("wdl")

