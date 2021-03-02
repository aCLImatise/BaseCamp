from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sample_Mate_Pairs_Pl_V0_1_0 = CommandToolBuilder(tool="sample_mate_pairs.pl", base_command=["sample_mate_pairs.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sample_Mate_Pairs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

