from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Class_Run_Py_V0_1_0 = CommandToolBuilder(tool="class_run.py", base_command=["class_run.py"], inputs=[ToolInput(tag="in_clean", input_type=Boolean(optional=True), prefix="--clean", doc=InputDocumentation(doc="")), ToolInput(tag="in_quick", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_utility", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_rewrite", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_wrapper", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_class_dot", input_type=String(), position=7, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Class_Run_Py_V0_1_0().translate("wdl")

