from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lfmm2Geno_V0_1_0 = CommandToolBuilder(tool="lfmm2geno", base_command=["lfmm2geno"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lfmm2Geno_V0_1_0().translate("wdl", allow_empty_container=True)

