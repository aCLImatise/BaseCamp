from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Eventclusterer_Py_V0_1_0 = CommandToolBuilder(tool="eventClusterer.py", base_command=["eventClusterer.py"], inputs=[ToolInput(tag="in_st", input_type=String(optional=True), prefix="-st", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eventclusterer_Py_V0_1_0().translate("wdl", allow_empty_container=True)

