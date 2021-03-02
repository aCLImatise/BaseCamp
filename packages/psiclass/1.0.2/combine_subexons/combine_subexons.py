from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Combine_Subexons_V0_1_0 = CommandToolBuilder(tool="combine_subexons", base_command=["combine-subexons"], inputs=[], outputs=[], container="quay.io/biocontainers/psiclass:1.0.2--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combine_Subexons_V0_1_0().translate("wdl")

