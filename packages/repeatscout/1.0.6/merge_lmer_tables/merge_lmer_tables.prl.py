from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Merge_Lmer_Tables_Prl_V0_1_0 = CommandToolBuilder(tool="merge_lmer_tables.prl", base_command=["merge-lmer-tables.prl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Lmer_Tables_Prl_V0_1_0().translate("wdl", allow_empty_container=True)

