from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Axtconvertor_V0_1_0 = CommandToolBuilder(tool="AXTConvertor", base_command=["AXTConvertor"], inputs=[], outputs=[], container="quay.io/biocontainers/kakscalculator2:2.0.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Axtconvertor_V0_1_0().translate("wdl")

