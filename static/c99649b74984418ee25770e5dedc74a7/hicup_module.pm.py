from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hicup_Module_Pm_V0_1_0 = CommandToolBuilder(tool="hicup_module.pm", base_command=["hicup_module.pm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicup_Module_Pm_V0_1_0().translate("wdl", allow_empty_container=True)

