from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Routines_Pm_V0_1_0 = CommandToolBuilder(tool="routines.pm", base_command=["routines.pm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Routines_Pm_V0_1_0().translate("wdl", allow_empty_container=True)

