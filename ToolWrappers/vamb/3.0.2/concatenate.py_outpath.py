from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Concatenate_Py_Outpath_V0_1_0 = CommandToolBuilder(tool="concatenate.py_outpath", base_command=["concatenate.py", "outpath"], inputs=[ToolInput(tag="in_no_zip", input_type=Boolean(optional=True), prefix="--nozip", doc=InputDocumentation(doc="")), ToolInput(tag="in_keep_names", input_type=Boolean(optional=True), prefix="--keepnames", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_concatenated_otp_y", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vamb:3.0.2--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Concatenate_Py_Outpath_V0_1_0().translate("wdl")

