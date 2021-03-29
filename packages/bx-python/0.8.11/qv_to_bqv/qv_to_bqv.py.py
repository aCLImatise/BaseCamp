from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Qv_To_Bqv_Py_V0_1_0 = CommandToolBuilder(tool="qv_to_bqv.py", base_command=["qv_to_bqv.py"], inputs=[ToolInput(tag="in_qual_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qv_To_Bqv_Py_V0_1_0().translate("wdl")

