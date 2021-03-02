from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Reduce_Qmers_V0_1_0 = CommandToolBuilder(tool="reduce_qmers", base_command=["reduce-qmers"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reduce_Qmers_V0_1_0().translate("wdl", allow_empty_container=True)

