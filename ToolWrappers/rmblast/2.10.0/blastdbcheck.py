from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Blastdbcheck_V0_1_0 = CommandToolBuilder(tool="blastdbcheck", base_command=["blastdbcheck"], inputs=[], outputs=[], container="quay.io/biocontainers/rmblast:2.10.0--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blastdbcheck_V0_1_0().translate("wdl")

