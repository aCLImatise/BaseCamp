from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Softcore_Setup_Py_V0_1_0 = CommandToolBuilder(tool="softcore_setup.py", base_command=["softcore_setup.py"], inputs=[ToolInput(tag="in_to", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_prepare", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Softcore_Setup_Py_V0_1_0().translate("wdl", allow_empty_container=True)

