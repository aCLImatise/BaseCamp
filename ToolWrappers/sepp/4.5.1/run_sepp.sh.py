from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_Sepp_Sh_V0_1_0 = CommandToolBuilder(tool="run_sepp.sh", base_command=["run-sepp.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/sepp:4.5.1--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Sepp_Sh_V0_1_0().translate("wdl")

