from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Esd2Esi_V0_1_0 = CommandToolBuilder(tool="esd2esi", base_command=["esd2esi"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esd2Esi_V0_1_0().translate("wdl", allow_empty_container=True)

