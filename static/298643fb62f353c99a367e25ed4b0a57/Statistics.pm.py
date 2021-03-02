from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Statistics_Pm_V0_1_0 = CommandToolBuilder(tool="Statistics.pm", base_command=["Statistics.pm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Statistics_Pm_V0_1_0().translate("wdl", allow_empty_container=True)

