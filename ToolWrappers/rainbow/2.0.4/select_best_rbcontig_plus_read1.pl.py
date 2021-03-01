from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Select_Best_Rbcontig_Plus_Read1_Pl_V0_1_0 = CommandToolBuilder(tool="select_best_rbcontig_plus_read1.pl", base_command=["select_best_rbcontig_plus_read1.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Select_Best_Rbcontig_Plus_Read1_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

