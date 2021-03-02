from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Nab2C_V0_1_0 = CommandToolBuilder(tool="nab2c", base_command=["nab2c"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nab2C_V0_1_0().translate("wdl", allow_empty_container=True)

