from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Medpy_Set_Pixel_Spacing_Py_Spacing_V0_1_0 = CommandToolBuilder(tool="medpy_set_pixel_spacing.py_spacing", base_command=["medpy_set_pixel_spacing.py", "spacing"], inputs=[ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_me_dpy_set_pixel_spacing_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_image", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_spacing", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Set_Pixel_Spacing_Py_Spacing_V0_1_0().translate("wdl", allow_empty_container=True)

