from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Score_Cds_Likelihood_All_6_Frames_Pl_V0_1_0 = CommandToolBuilder(tool="score_CDS_likelihood_all_6_frames.pl", base_command=["score_CDS_likelihood_all_6_frames.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Score_Cds_Likelihood_All_6_Frames_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

