from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maf_Split_By_Src_Py_V0_1_0 = CommandToolBuilder(tool="maf_split_by_src.py", base_command=["maf_split_by_src.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Split_By_Src_Py_V0_1_0().translate("wdl", allow_empty_container=True)

