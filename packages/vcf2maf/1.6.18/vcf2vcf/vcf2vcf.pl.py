from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vcf2Vcf_Pl_V0_1_0 = CommandToolBuilder(tool="vcf2vcf.pl", base_command=["vcf2vcf.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf2Vcf_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

