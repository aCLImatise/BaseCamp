from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Align_Print_Template_Py_V0_1_0 = CommandToolBuilder(tool="align_print_template.py", base_command=["align_print_template.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Align_Print_Template_Py_V0_1_0().translate("wdl", allow_empty_container=True)

