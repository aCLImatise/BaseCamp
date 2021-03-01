from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Geno2Lfmm_V0_1_0 = CommandToolBuilder(tool="geno2lfmm", base_command=["geno2lfmm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Geno2Lfmm_V0_1_0().translate("wdl", allow_empty_container=True)

