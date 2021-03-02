from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Intersection_Matrix_Py_V0_1_0 = CommandToolBuilder(tool="intersection_matrix.py", base_command=["intersection_matrix.py"], inputs=[ToolInput(tag="in_n", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_run", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_send", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_matrix", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_example", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_their", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_with", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_intersections", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Intersection_Matrix_Py_V0_1_0().translate("wdl", allow_empty_container=True)

