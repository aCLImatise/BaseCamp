from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


M2Fmt_Tier_Hits_Pl_V0_1_0 = CommandToolBuilder(tool="m2fmt_tier_hits.pl", base_command=["m2fmt_tier_hits.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    M2Fmt_Tier_Hits_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

