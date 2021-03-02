from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Medpy_Label_Superimposition_Py_Output_V0_1_0 = CommandToolBuilder(tool="medpy_label_superimposition.py_output", base_command=["medpy_label_superimposition.py", "output"], inputs=[ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_me_dpy_label_superimposition_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_image_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_image_two", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Label_Superimposition_Py_Output_V0_1_0().translate("wdl", allow_empty_container=True)

