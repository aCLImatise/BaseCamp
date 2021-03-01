from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Refine_Hexamer_Scores_Pl_V0_1_0 = CommandToolBuilder(tool="refine_hexamer_scores.pl", base_command=["refine_hexamer_scores.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refine_Hexamer_Scores_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

