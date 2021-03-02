from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Simple_Numeric_Bow_Union_Py_V0_1_0 = CommandToolBuilder(tool="simple_numeric_bow_union.py", base_command=["simple_numeric_bow_union.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simple_Numeric_Bow_Union_Py_V0_1_0().translate("wdl", allow_empty_container=True)

