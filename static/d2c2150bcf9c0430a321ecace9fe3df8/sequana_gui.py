from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sequana_Gui_V0_1_0 = CommandToolBuilder(tool="sequana_gui", base_command=["sequana_gui"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequana_Gui_V0_1_0().translate("wdl", allow_empty_container=True)

