from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Medpy_Extract_Contour_Py_V0_1_0 = CommandToolBuilder(tool="medpy_extract_contour.py", base_command=["medpy_extract_contour.py"], inputs=[ToolInput(tag="in_width", input_type=String(optional=True), prefix="--width", doc=InputDocumentation(doc="Width of the contour.")), ToolInput(tag="in_dimension", input_type=String(optional=True), prefix="--dimension", doc=InputDocumentation(doc="Extract contours only along this dimension.")), ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_silently_override_images", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Silently override existing output images.")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Source volume.")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Target volume."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Extract_Contour_Py_V0_1_0().translate("wdl", allow_empty_container=True)

