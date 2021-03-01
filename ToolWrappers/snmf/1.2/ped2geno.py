from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ped2Geno_V0_1_0 = CommandToolBuilder(tool="ped2geno", base_command=["ped2geno"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ped2Geno_V0_1_0().translate("wdl", allow_empty_container=True)

