from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Itsx_Tpl_Html_V0_1_0 = CommandToolBuilder(tool="itsx_tpl.html", base_command=["itsx_tpl.html"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Itsx_Tpl_Html_V0_1_0().translate("wdl", allow_empty_container=True)

