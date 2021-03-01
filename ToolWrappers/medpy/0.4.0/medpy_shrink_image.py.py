from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Medpy_Shrink_Image_Py_V0_1_0 = CommandToolBuilder(tool="medpy_shrink_image.py", base_command=["medpy_shrink_image.py"], inputs=[ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_silently_override_images", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Silently override existing output images.")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Source volume.")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Target volume.")), ToolInput(tag="in_dimension", input_type=String(), position=2, doc=InputDocumentation(doc="The dimension along which to discard the slices.")), ToolInput(tag="in_discard", input_type=String(), position=3, doc=InputDocumentation(doc="How many slices to discard between each two slices which are kept."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Shrink_Image_Py_V0_1_0().translate("wdl", allow_empty_container=True)

