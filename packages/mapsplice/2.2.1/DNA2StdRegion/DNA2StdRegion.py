from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dna2Stdregion_V0_1_0 = CommandToolBuilder(tool="DNA2StdRegion", base_command=["DNA2StdRegion"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dna2Stdregion_V0_1_0().translate("wdl", allow_empty_container=True)

