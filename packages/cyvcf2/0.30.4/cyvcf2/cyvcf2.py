from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cyvcf2_V0_1_0 = CommandToolBuilder(tool="cyvcf2", base_command=["cyvcf2"], inputs=[], outputs=[], container="quay.io/biocontainers/cyvcf2:0.30.4--py36he01d083_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cyvcf2_V0_1_0().translate("wdl")

