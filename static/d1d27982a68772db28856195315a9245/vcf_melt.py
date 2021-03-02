from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vcf_Melt_V0_1_0 = CommandToolBuilder(tool="vcf_melt", base_command=["vcf_melt"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf_Melt_V0_1_0().translate("wdl", allow_empty_container=True)

