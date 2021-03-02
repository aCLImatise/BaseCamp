from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dv_Make_Examples_Py_V0_1_0 = CommandToolBuilder(tool="dv_make_examples.py", base_command=["dv_make_examples.py"], inputs=[ToolInput(tag="in_reads", input_type=Boolean(optional=True), prefix="--reads", doc=InputDocumentation(doc="")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="")), ToolInput(tag="in_cores", input_type=String(optional=True), prefix="--cores", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dv_Make_Examples_Py_V0_1_0().translate("wdl", allow_empty_container=True)

