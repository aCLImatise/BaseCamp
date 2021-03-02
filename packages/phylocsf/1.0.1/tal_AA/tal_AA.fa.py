from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tal_Aa_Fa_V0_1_0 = CommandToolBuilder(tool="tal_AA.fa", base_command=["tal-AA.fa"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tal_Aa_Fa_V0_1_0().translate("wdl", allow_empty_container=True)

