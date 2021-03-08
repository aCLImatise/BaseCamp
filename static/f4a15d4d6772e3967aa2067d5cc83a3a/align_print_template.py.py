from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Align_Print_Template_Py_V0_1_0 = CommandToolBuilder(tool="align_print_template.py", base_command=["align_print_template.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Align_Print_Template_Py_V0_1_0().translate("wdl")

