from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcpp_Py_V0_1_0 = CommandToolBuilder(tool="gcpp.py", base_command=["gcpp.py"], inputs=[ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="reference genetic code")), ToolInput(tag="in_list", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_genetic", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_codes", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcpp_Py_V0_1_0().translate("wdl", allow_empty_container=True)

