from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Evaluate_Meraculous_Run_Sh_V0_1_0 = CommandToolBuilder(tool="evaluate_meraculous_run.sh", base_command=["evaluate_meraculous_run.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Evaluate_Meraculous_Run_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

