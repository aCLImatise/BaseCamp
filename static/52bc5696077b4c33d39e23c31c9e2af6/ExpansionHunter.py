from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Expansionhunter_V0_1_0 = CommandToolBuilder(tool="ExpansionHunter", base_command=["ExpansionHunter"], inputs=[], outputs=[], container="quay.io/biocontainers/expansionhunter:4.0.2--he785bd8_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Expansionhunter_V0_1_0().translate("wdl")

