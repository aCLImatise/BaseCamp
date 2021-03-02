from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Compute_Sr_Cov_Revisedforgccontig_Pl_V0_1_0 = CommandToolBuilder(tool="compute_sr_cov.revisedForGCContig.pl", base_command=["compute_sr_cov.revisedForGCContig.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compute_Sr_Cov_Revisedforgccontig_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

