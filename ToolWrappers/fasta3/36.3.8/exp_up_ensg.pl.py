from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Exp_Up_Ensg_Pl_V0_1_0 = CommandToolBuilder(tool="exp_up_ensg.pl", base_command=["exp_up_ensg.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Exp_Up_Ensg_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

