from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Medpy_Diff_Py_Input2_V0_1_0 = CommandToolBuilder(tool="medpy_diff.py_input2", base_command=["medpy_diff.py", "input2"], inputs=[ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_me_dpy_diff_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_two", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Diff_Py_Input2_V0_1_0().translate("wdl", allow_empty_container=True)

