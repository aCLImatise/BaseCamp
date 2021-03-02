from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vcfgeno2Alleles_V0_1_0 = CommandToolBuilder(tool="vcfgeno2alleles", base_command=["vcfgeno2alleles"], inputs=[], outputs=[], container="quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfgeno2Alleles_V0_1_0().translate("wdl")

