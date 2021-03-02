from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Homerconfig_Pm_V0_1_0 = CommandToolBuilder(tool="HomerConfig.pm", base_command=["HomerConfig.pm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Homerconfig_Pm_V0_1_0().translate("wdl", allow_empty_container=True)

