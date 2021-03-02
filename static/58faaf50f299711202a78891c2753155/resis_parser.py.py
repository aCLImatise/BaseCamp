from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Resis_Parser_Py_V0_1_0 = CommandToolBuilder(tool="resis_parser.py", base_command=["resis_parser.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Resis_Parser_Py_V0_1_0().translate("wdl", allow_empty_container=True)

