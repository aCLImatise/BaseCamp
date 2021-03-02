from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Samt99_Pm_V0_1_0 = CommandToolBuilder(tool="SamT99.pm", base_command=["SamT99.pm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samt99_Pm_V0_1_0().translate("wdl", allow_empty_container=True)

