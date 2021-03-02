from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Medpy_Label_Count_Py_V0_1_0 = CommandToolBuilder(tool="medpy_label_count.py", base_command=["medpy_label_count.py"], inputs=[ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_images", input_type=String(), position=0, doc=InputDocumentation(doc="One or more label images."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Label_Count_Py_V0_1_0().translate("wdl", allow_empty_container=True)

