from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float

Tiddit_Py_V0_1_0 = CommandToolBuilder(tool="TIDDIT.py", base_command=["TIDDIT.py"], inputs=[ToolInput(tag="in_sv", input_type=Boolean(optional=True), prefix="--sv", doc=InputDocumentation(doc="call structural variation")), ToolInput(tag="in_cov", input_type=Boolean(optional=True), prefix="--cov", doc=InputDocumentation(doc="generate a coverage bed file")), ToolInput(tag="in_tidd_it_two_do_tone_two_dot_one", input_type=Float(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/tiddit:2.12.1--py37h0498b6d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tiddit_Py_V0_1_0().translate("wdl")

