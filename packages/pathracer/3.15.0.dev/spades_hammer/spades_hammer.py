from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Spades_Hammer_V0_1_0 = CommandToolBuilder(tool="spades_hammer", base_command=["spades-hammer"], inputs=[], outputs=[], container="quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Hammer_V0_1_0().translate("wdl")

