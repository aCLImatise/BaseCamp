from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Medpy_Label_Fit_To_Mask_Py_V0_1_0 = CommandToolBuilder(tool="medpy_label_fit_to_mask.py", base_command=["medpy_label_fit_to_mask.py"], inputs=[ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_silently_override_images", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Silently override existing output images.")), ToolInput(tag="in_image", input_type=String(), position=0, doc=InputDocumentation(doc="The input label image.")), ToolInput(tag="in_mask", input_type=String(), position=1, doc=InputDocumentation(doc="The mask image to which to fit the label images.")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="The output image."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Label_Fit_To_Mask_Py_V0_1_0().translate("wdl", allow_empty_container=True)

