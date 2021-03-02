from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ftbl2Optr_V0_1_0 = CommandToolBuilder(tool="ftbl2optR", base_command=["ftbl2optR"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ftbl2Optr_V0_1_0().translate("wdl", allow_empty_container=True)

