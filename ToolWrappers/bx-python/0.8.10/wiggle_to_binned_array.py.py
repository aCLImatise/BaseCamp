from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Wiggle_To_Binned_Array_Py_V0_1_0 = CommandToolBuilder(tool="wiggle_to_binned_array.py", base_command=["wiggle_to_binned_array.py"], inputs=[ToolInput(tag="in_comp", input_type=String(optional=True), prefix="--comp", doc=InputDocumentation(doc="compression type (none, zlib, lzo)")), ToolInput(tag="in_score_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wiggle_To_Binned_Array_Py_V0_1_0().translate("wdl")

