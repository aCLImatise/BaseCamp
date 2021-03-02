from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cas_Offinder_V0_1_0 = CommandToolBuilder(tool="cas_offinder", base_command=["cas-offinder"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cas_Offinder_V0_1_0().translate("wdl", allow_empty_container=True)

