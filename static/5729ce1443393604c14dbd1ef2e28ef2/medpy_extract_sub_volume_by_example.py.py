from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Medpy_Extract_Sub_Volume_By_Example_Py_V0_1_0 = CommandToolBuilder(tool="medpy_extract_sub_volume_by_example.py", base_command=["medpy_extract_sub_volume_by_example.py"], inputs=[ToolInput(tag="in_offset", input_type=Int(optional=True), prefix="--offset", doc=InputDocumentation(doc="Set an offset by which the extracted sub-volume size should be increased in all directions.")), ToolInput(tag="in_set_flag_override", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Set this flag to silently override files that exist.")), ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_image", input_type=String(), position=0, doc=InputDocumentation(doc="The input image.")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="The resulting sub-volume.")), ToolInput(tag="in_mask", input_type=String(), position=2, doc=InputDocumentation(doc="A mask image containing a single foreground object (non-zero)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Extract_Sub_Volume_By_Example_Py_V0_1_0().translate("wdl", allow_empty_container=True)

