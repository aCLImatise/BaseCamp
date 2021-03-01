from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ptmlist_Txt_V0_1_0 = CommandToolBuilder(tool="ptmlist.txt", base_command=["ptmlist.txt"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ptmlist_Txt_V0_1_0().translate("wdl", allow_empty_container=True)

