from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Blastp_V0_1_0 = CommandToolBuilder(tool="blastp", base_command=["blastp"], inputs=[], outputs=[], container="quay.io/biocontainers/rmblast:2.10.0--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blastp_V0_1_0().translate("wdl")

