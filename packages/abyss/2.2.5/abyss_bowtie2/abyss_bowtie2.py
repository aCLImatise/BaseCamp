from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Abyss_Bowtie2_V0_1_0 = CommandToolBuilder(tool="abyss_bowtie2", base_command=["abyss-bowtie2"], inputs=[], outputs=[], container="quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Bowtie2_V0_1_0().translate("wdl")

