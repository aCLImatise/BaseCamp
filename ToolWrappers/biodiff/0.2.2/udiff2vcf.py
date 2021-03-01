from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Udiff2Vcf_V0_1_0 = CommandToolBuilder(tool="udiff2vcf", base_command=["udiff2vcf"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Udiff2Vcf_V0_1_0().translate("wdl", allow_empty_container=True)

