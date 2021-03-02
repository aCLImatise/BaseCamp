from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bbwrap_Sh_V0_1_0 = CommandToolBuilder(tool="bbwrap.sh", base_command=["bbwrap.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/bbmap:38.90--h1296035_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bbwrap_Sh_V0_1_0().translate("wdl")

