from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ljresidn_V0_1_0 = CommandToolBuilder(tool="ljresidn", base_command=["ljresidn"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ljresidn_V0_1_0().translate("wdl", allow_empty_container=True)

