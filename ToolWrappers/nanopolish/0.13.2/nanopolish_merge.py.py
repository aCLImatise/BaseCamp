from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Nanopolish_Merge_Py_V0_1_0 = CommandToolBuilder(tool="nanopolish_merge.py", base_command=["nanopolish_merge.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanopolish_Merge_Py_V0_1_0().translate("wdl", allow_empty_container=True)

