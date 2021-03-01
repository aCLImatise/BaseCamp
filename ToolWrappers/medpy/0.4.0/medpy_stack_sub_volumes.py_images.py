from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Medpy_Stack_Sub_Volumes_Py_Images_V0_1_0 = CommandToolBuilder(tool="medpy_stack_sub_volumes.py_images", base_command=["medpy_stack_sub_volumes.py", "images"], inputs=[ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_z", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_me_dpy_stack_sub_volumes_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Stack_Sub_Volumes_Py_Images_V0_1_0().translate("wdl", allow_empty_container=True)

