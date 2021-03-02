from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Brassi_Pre_Filter_Pl_V0_1_0 = CommandToolBuilder(tool="brassI_pre_filter.pl", base_command=["brassI_pre_filter.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Brassi_Pre_Filter_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

