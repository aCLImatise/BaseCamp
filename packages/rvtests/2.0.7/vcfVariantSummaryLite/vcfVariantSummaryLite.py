from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vcfvariantsummarylite_V0_1_0 = CommandToolBuilder(tool="vcfVariantSummaryLite", base_command=["vcfVariantSummaryLite"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfvariantsummarylite_V0_1_0().translate("wdl", allow_empty_container=True)

