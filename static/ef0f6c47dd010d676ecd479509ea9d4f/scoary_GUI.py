from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Scoary_Gui_V0_1_0 = CommandToolBuilder(tool="scoary_GUI", base_command=["scoary_GUI"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scoary_Gui_V0_1_0().translate("wdl", allow_empty_container=True)

