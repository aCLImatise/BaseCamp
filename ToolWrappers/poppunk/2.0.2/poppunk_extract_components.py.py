from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Poppunk_Extract_Components_Py_V0_1_0 = CommandToolBuilder(tool="poppunk_extract_components.py", base_command=["poppunk_extract_components.py"], inputs=[ToolInput(tag="in_extract_components", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_graph", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Extract_Components_Py_V0_1_0().translate("wdl", allow_empty_container=True)

