from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_With_Lock_V0_1_0 = CommandToolBuilder(tool="run_with_lock", base_command=["run_with_lock"], inputs=[], outputs=[], container="quay.io/biocontainers/blast:2.11.0--pl526he19e7b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_With_Lock_V0_1_0().translate("wdl")

