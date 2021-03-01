from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pslcdnafilter_V0_1_0 = CommandToolBuilder(tool="pslCDnaFilter", base_command=["pslCDnaFilter"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslcdnafilter_V0_1_0().translate("wdl", allow_empty_container=True)

