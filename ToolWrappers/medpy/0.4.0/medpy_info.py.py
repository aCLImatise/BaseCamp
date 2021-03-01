from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Medpy_Info_Py_V0_1_0 = CommandToolBuilder(tool="medpy_info.py", base_command=["medpy_info.py"], inputs=[ToolInput(tag="in_display_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display more information.")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="The image to analyse."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Info_Py_V0_1_0().translate("wdl", allow_empty_container=True)

