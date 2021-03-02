from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tabix___V0_1_0 = CommandToolBuilder(tool="tabix++", base_command=["tabix++"], inputs=[], outputs=[], container="quay.io/biocontainers/tabixpp:1.1.0--hd2e4403_4", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tabix___V0_1_0().translate("wdl")

