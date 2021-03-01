from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Flux_Simulator_V0_1_0 = CommandToolBuilder(tool="flux_simulator", base_command=["flux-simulator"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flux_Simulator_V0_1_0().translate("wdl", allow_empty_container=True)

