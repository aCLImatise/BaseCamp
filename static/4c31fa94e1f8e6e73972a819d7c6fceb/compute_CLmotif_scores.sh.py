from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Compute_Clmotif_Scores_Sh_V0_1_0 = CommandToolBuilder(tool="compute_CLmotif_scores.sh", base_command=["compute_CLmotif_scores.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compute_Clmotif_Scores_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

