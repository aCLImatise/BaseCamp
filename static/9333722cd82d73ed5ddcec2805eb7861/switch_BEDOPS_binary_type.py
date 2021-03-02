from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Switch_Bedops_Binary_Type_V0_1_0 = CommandToolBuilder(tool="switch_BEDOPS_binary_type", base_command=["switch-BEDOPS-binary-type"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Switch_Bedops_Binary_Type_V0_1_0().translate("wdl", allow_empty_container=True)

