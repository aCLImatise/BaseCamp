from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vcftools_V0_1_0 = CommandToolBuilder(tool="vcftools", base_command=["vcftools"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcftools_V0_1_0().translate("wdl", allow_empty_container=True)

