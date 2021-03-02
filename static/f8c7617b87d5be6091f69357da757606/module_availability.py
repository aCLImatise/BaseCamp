from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Module_Availability_V0_1_0 = CommandToolBuilder(tool="module_availability", base_command=["module_availability"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Module_Availability_V0_1_0().translate("wdl", allow_empty_container=True)

