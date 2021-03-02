from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cwl_Runner_V0_1_0 = CommandToolBuilder(tool="cwl_runner", base_command=["cwl-runner"], inputs=[], outputs=[], container="quay.io/biocontainers/arvados-cwl-runner:2.0.4--pyh864c0ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cwl_Runner_V0_1_0().translate("wdl")

