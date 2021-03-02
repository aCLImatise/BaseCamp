from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Promiscuity_Filter_Pl_V0_1_0 = CommandToolBuilder(tool="promiscuity_filter.pl", base_command=["promiscuity_filter.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Promiscuity_Filter_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

