from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mpinab2C_V0_1_0 = CommandToolBuilder(tool="mpinab2c", base_command=["mpinab2c"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mpinab2C_V0_1_0().translate("wdl", allow_empty_container=True)

