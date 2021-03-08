from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


One_Field_Per_Line_Py_V0_1_0 = CommandToolBuilder(tool="one_field_per_line.py", base_command=["one_field_per_line.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    One_Field_Per_Line_Py_V0_1_0().translate("wdl")

