from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Random_Lines_Py_V0_1_0 = CommandToolBuilder(tool="random_lines.py", base_command=["random_lines.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Random_Lines_Py_V0_1_0().translate("wdl", allow_empty_container=True)

