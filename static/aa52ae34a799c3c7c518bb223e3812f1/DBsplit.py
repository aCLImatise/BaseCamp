from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Dbsplit_V0_1_0 = CommandToolBuilder(tool="DBsplit", base_command=["DBsplit"], inputs=[ToolInput(tag="in_x", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_int", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbsplit_V0_1_0().translate("wdl", allow_empty_container=True)

