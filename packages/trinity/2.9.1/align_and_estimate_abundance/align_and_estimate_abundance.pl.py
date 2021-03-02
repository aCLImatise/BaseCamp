from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Align_And_Estimate_Abundance_Pl_V0_1_0 = CommandToolBuilder(tool="align_and_estimate_abundance.pl", base_command=["align_and_estimate_abundance.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Align_And_Estimate_Abundance_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

