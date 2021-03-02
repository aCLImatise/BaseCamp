from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hlp_Xtract_Txt_V0_1_0 = CommandToolBuilder(tool="hlp_xtract.txt", base_command=["hlp-xtract.txt"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hlp_Xtract_Txt_V0_1_0().translate("wdl", allow_empty_container=True)

