from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Snpgenie_Within_Group_Pl_V0_1_0 = CommandToolBuilder(tool="snpgenie_within_group.pl", base_command=["snpgenie_within_group.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpgenie_Within_Group_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

