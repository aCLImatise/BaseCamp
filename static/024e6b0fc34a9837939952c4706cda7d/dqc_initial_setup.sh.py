from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dqc_Initial_Setup_Sh_V0_1_0 = CommandToolBuilder(tool="dqc_initial_setup.sh", base_command=["dqc_initial_setup.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/dfast_qc:0.2.8--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dqc_Initial_Setup_Sh_V0_1_0().translate("wdl")

