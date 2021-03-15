from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Flight_V0_1_0 = CommandToolBuilder(tool="flight", base_command=["flight"], inputs=[], outputs=[], container="quay.io/biocontainers/flight-genome:1.1.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flight_V0_1_0().translate("wdl")

