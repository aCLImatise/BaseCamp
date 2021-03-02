from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maf_Truncate_Py_V0_1_0 = CommandToolBuilder(tool="maf_truncate.py", base_command=["maf_truncate.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Truncate_Py_V0_1_0().translate("wdl", allow_empty_container=True)

