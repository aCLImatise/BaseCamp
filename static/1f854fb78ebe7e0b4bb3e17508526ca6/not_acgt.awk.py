from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Not_Acgt_Awk_V0_1_0 = CommandToolBuilder(tool="not_acgt.awk", base_command=["not-acgt.awk"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Not_Acgt_Awk_V0_1_0().translate("wdl", allow_empty_container=True)

