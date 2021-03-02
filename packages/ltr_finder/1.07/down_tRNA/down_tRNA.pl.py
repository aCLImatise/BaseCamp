from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Down_Trna_Pl_V0_1_0 = CommandToolBuilder(tool="down_tRNA.pl", base_command=["down_tRNA.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Down_Trna_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

