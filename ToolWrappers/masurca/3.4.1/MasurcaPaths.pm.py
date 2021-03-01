from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Masurcapaths_Pm_V0_1_0 = CommandToolBuilder(tool="MasurcaPaths.pm", base_command=["MasurcaPaths.pm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Masurcapaths_Pm_V0_1_0().translate("wdl", allow_empty_container=True)

