from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Output_V0_1_0 = CommandToolBuilder(tool="Get_output", base_command=["Get_output"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Output_V0_1_0().translate("wdl", allow_empty_container=True)

