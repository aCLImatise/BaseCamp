from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


4_4_Fisher_R_V0_1_0 = CommandToolBuilder(tool="4_4_Fisher.R", base_command=["4_4_Fisher.R"], inputs=[], outputs=[], container="quay.io/biocontainers/sat-bsa:1.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    4_4_Fisher_R_V0_1_0().translate("wdl")

