from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Apirst2Html_Py_V0_1_0 = CommandToolBuilder(tool="apirst2html.py", base_command=["apirst2html.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Apirst2Html_Py_V0_1_0().translate("wdl", allow_empty_container=True)

