from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Byobu_Select_Session_V0_1_0 = CommandToolBuilder(tool="byobu_select_session", base_command=["byobu-select-session"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Byobu_Select_Session_V0_1_0().translate("wdl", allow_empty_container=True)

