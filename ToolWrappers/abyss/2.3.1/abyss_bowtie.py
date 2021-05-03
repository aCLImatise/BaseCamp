from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Abyss_Bowtie_V0_1_0 = CommandToolBuilder(tool="abyss_bowtie", base_command=["abyss-bowtie"], inputs=[], outputs=[], container="quay.io/biocontainers/abyss:2.3.1--hd403d74_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Bowtie_V0_1_0().translate("wdl")

