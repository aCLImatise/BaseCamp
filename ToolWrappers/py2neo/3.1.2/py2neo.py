from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Py2Neo_V0_1_0 = CommandToolBuilder(tool="py2neo", base_command=["py2neo"], inputs=[ToolInput(tag="in_p", input_type=String(optional=True), prefix="-P", doc=InputDocumentation(doc="")), ToolInput(tag="in_h", input_type=String(optional=True), prefix="-H", doc=InputDocumentation(doc="")), ToolInput(tag="in_run", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_statement", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Py2Neo_V0_1_0().translate("wdl", allow_empty_container=True)

