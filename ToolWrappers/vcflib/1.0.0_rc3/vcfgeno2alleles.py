from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vcfgeno2Alleles_V0_1_0 = CommandToolBuilder(tool="vcfgeno2alleles", base_command=["vcfgeno2alleles"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfgeno2Alleles_V0_1_0().translate("wdl", allow_empty_container=True)

