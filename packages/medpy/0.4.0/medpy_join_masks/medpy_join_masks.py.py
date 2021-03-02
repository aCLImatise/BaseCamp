from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Medpy_Join_Masks_Py_V0_1_0 = CommandToolBuilder(tool="medpy_join_masks.py", base_command=["medpy_join_masks.py"], inputs=[ToolInput(tag="in_operation", input_type=String(optional=True), prefix="--operation", doc=InputDocumentation(doc="Combinatorial operation to conduct.")), ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_silently_override_images", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Silently override existing output images.")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="Target volume.")), ToolInput(tag="in_inputs", input_type=String(), position=1, doc=InputDocumentation(doc="Source volume(s)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Join_Masks_Py_V0_1_0().translate("wdl", allow_empty_container=True)

