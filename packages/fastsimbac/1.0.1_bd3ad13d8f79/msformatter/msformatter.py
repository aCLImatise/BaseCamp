from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Msformatter_V0_1_0 = CommandToolBuilder(tool="msformatter", base_command=["msformatter"], inputs=[], outputs=[], container="quay.io/biocontainers/fastsimbac:1.0.1_bd3ad13d8f79--h17a57d0_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msformatter_V0_1_0().translate("wdl")

