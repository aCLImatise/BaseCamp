from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Medpy_Extract_Min_Max_Py_Images_V0_1_0 = CommandToolBuilder(tool="medpy_extract_min_max.py_images", base_command=["medpy_extract_min_max.py", "images"], inputs=[ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_me_dpy_extract_min_max_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_csv", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_images", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Extract_Min_Max_Py_Images_V0_1_0().translate("wdl", allow_empty_container=True)

