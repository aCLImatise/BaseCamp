from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Medpy_Extract_Sub_Volume_Auto_Py_V0_1_0 = CommandToolBuilder(tool="medpy_extract_sub_volume_auto.py", base_command=["medpy_extract_sub_volume_auto.py"], inputs=[ToolInput(tag="in_set_flag_override", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Set this flag to silently override files that exist.")), ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_image", input_type=String(), position=0, doc=InputDocumentation(doc="An image of arbitrary dimensions that should be split.")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Output volumes. Has to include the sequence '{}' in the place where the volume number should be placed.")), ToolInput(tag="in_dimension", input_type=String(), position=2, doc=InputDocumentation(doc="The dimension in which direction to split (starting from 0:x).")), ToolInput(tag="in_maxsize", input_type=String(), position=3, doc=InputDocumentation(doc="The produced volumes will always be smaller than this size (in terms of slices in the cut-dimension)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Extract_Sub_Volume_Auto_Py_V0_1_0().translate("wdl", allow_empty_container=True)

