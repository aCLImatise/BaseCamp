from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Medpy_Graphcut_Label_W_Regional_Py_V0_1_0 = CommandToolBuilder(tool="medpy_graphcut_label_w_regional.py", base_command=["medpy_graphcut_label_w_regional.py"], inputs=[ToolInput(tag="in_boundary", input_type=String(optional=True), prefix="--boundary", doc=InputDocumentation(doc="The boundary term to use. Note that difference of means (means) requires the original image, while stawiaski requires the gradient image of the original image to be passed to badditional.")), ToolInput(tag="in_regional", input_type=String(optional=True), prefix="--regional", doc=InputDocumentation(doc="The regional term to use. Note that the atlas requires to provide an atlas image.")), ToolInput(tag="in_r_additional", input_type=String(optional=True), prefix="--radditional", doc=InputDocumentation(doc="The additional image required by the regional term. See there for details.")), ToolInput(tag="in_alpha", input_type=String(optional=True), prefix="--alpha", doc=InputDocumentation(doc="The weight of the regional term compared to the boundary term.")), ToolInput(tag="in_set_flag_override", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Set this flag to silently override files that exist.")), ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_b_additional", input_type=String(), position=0, doc=InputDocumentation(doc="The additional image required by the boundary term. See there for details.")), ToolInput(tag="in_region", input_type=String(), position=1, doc=InputDocumentation(doc="The region image of the image to segment.")), ToolInput(tag="in_markers", input_type=String(), position=2, doc=InputDocumentation(doc="Binary image containing the foreground (=1) and background (=2) markers.")), ToolInput(tag="in_output", input_type=String(), position=3, doc=InputDocumentation(doc="The output image containing the segmentation."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Graphcut_Label_W_Regional_Py_V0_1_0().translate("wdl", allow_empty_container=True)

