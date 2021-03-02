from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Runcon_V0_1_0 = CommandToolBuilder(tool="runcon", base_command=["runcon"], inputs=[ToolInput(tag="in_compute", input_type=Boolean(optional=True), prefix="--compute", doc=InputDocumentation(doc="compute process transition context before modifying")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="type (for same role as parent)")), ToolInput(tag="in_user", input_type=String(optional=True), prefix="--user", doc=InputDocumentation(doc="user identity")), ToolInput(tag="in_role", input_type=String(optional=True), prefix="--role", doc=InputDocumentation(doc="role")), ToolInput(tag="in_range", input_type=String(optional=True), prefix="--range", doc=InputDocumentation(doc="levelrange")), ToolInput(tag="in_context", input_type=String(), position=0, doc=InputDocumentation(doc="Complete security context"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runcon_V0_1_0().translate("wdl", allow_empty_container=True)

