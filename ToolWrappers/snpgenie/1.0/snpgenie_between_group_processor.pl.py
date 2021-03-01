from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Snpgenie_Between_Group_Processor_Pl_V0_1_0 = CommandToolBuilder(tool="snpgenie_between_group_processor.pl", base_command=["snpgenie_between_group_processor.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpgenie_Between_Group_Processor_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

