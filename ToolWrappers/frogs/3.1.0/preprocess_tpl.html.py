from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Preprocess_Tpl_Html_V0_1_0 = CommandToolBuilder(tool="preprocess_tpl.html", base_command=["preprocess_tpl.html"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Preprocess_Tpl_Html_V0_1_0().translate("wdl", allow_empty_container=True)

