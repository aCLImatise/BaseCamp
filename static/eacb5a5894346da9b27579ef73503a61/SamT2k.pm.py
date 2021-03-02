from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Samt2K_Pm_V0_1_0 = CommandToolBuilder(tool="SamT2k.pm", base_command=["SamT2k.pm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samt2K_Pm_V0_1_0().translate("wdl", allow_empty_container=True)

