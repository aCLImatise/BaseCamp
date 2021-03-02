from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Arb_Naligner_V0_1_0 = CommandToolBuilder(tool="arb_naligner", base_command=["arb_naligner"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arb_Naligner_V0_1_0().translate("wdl", allow_empty_container=True)

