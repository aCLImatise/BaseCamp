from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Simulator_V0_1_0 = CommandToolBuilder(tool="simulator", base_command=["simulator"], inputs=[], outputs=[], container="quay.io/biocontainers/elector:1.0.4--py36hf0b53f7_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simulator_V0_1_0().translate("wdl")

