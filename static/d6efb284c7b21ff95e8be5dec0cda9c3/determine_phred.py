from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Determine_Phred_V0_1_0 = CommandToolBuilder(tool="determine_phred", base_command=["determine-phred"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Determine_Phred_V0_1_0().translate("wdl", allow_empty_container=True)

