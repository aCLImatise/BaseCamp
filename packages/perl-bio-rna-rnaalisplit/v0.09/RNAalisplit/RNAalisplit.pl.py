from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rnaalisplit_Pl_V0_1_0 = CommandToolBuilder(tool="RNAalisplit.pl", base_command=["RNAalisplit.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnaalisplit_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

