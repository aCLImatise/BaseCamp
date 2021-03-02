from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Coverm_Filter_V0_1_0 = CommandToolBuilder(tool="coverm_filter", base_command=["coverm", "filter"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverm_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

