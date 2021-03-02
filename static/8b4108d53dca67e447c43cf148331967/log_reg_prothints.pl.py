from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Log_Reg_Prothints_Pl_V0_1_0 = CommandToolBuilder(tool="log_reg_prothints.pl", base_command=["log_reg_prothints.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Log_Reg_Prothints_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

