from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Star_Parse_Py_V0_1_0 = CommandToolBuilder(tool="star_parse.py", base_command=["star_parse.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Star_Parse_Py_V0_1_0().translate("wdl", allow_empty_container=True)

