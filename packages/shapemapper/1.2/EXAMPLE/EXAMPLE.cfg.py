from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Example_Cfg_V0_1_0 = CommandToolBuilder(tool="EXAMPLE.cfg", base_command=["EXAMPLE.cfg"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Example_Cfg_V0_1_0().translate("wdl", allow_empty_container=True)

