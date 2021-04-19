from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Grep_Py_Target_V0_1_0 = CommandToolBuilder(tool="grep.py_target", base_command=["grep.py", "target"], inputs=[ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_grep_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ids", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_target", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mikado:2.2.4--py38h803c66d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Grep_Py_Target_V0_1_0().translate("wdl")

