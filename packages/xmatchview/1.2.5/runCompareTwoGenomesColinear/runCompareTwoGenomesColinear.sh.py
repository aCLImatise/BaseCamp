from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Runcomparetwogenomescolinear_Sh_V0_1_0 = CommandToolBuilder(tool="runCompareTwoGenomesColinear.sh", base_command=["runCompareTwoGenomesColinear.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/xmatchview:1.2.5--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runcomparetwogenomescolinear_Sh_V0_1_0().translate("wdl")

