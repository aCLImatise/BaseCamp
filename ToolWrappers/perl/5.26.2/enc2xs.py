from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Enc2Xs_V0_1_0 = CommandToolBuilder(tool="enc2xs", base_command=["enc2xs"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enc2Xs_V0_1_0().translate("wdl", allow_empty_container=True)

