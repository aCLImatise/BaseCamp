from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vcfsummarylite_V0_1_0 = CommandToolBuilder(tool="vcfSummaryLite", base_command=["vcfSummaryLite"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfsummarylite_V0_1_0().translate("wdl", allow_empty_container=True)

