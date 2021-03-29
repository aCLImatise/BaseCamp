from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Bed_Subtract_Basewise_Py_V0_1_0 = CommandToolBuilder(tool="bed_subtract_basewise.py", base_command=["bed_subtract_basewise.py"], inputs=[ToolInput(tag="in_bed_file_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_file_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed_Subtract_Basewise_Py_V0_1_0().translate("wdl")

