from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sift_Bam_Max_Cov_Pl_V0_1_0 = CommandToolBuilder(tool="sift_bam_max_cov.pl", base_command=["sift_bam_max_cov.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sift_Bam_Max_Cov_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

