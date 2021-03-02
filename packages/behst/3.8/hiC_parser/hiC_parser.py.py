from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hic_Parser_Py_V0_1_0 = CommandToolBuilder(tool="hiC_parser.py", base_command=["hiC_parser.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hic_Parser_Py_V0_1_0().translate("wdl", allow_empty_container=True)

