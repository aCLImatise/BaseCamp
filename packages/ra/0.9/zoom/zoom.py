from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Zoom_V0_1_0 = CommandToolBuilder(tool="zoom", base_command=["zoom"], inputs=[ToolInput(tag="in_root", input_type=Boolean(optional=True), prefix="--root", doc=InputDocumentation(doc="root read (int)")), ToolInput(tag="in_depth", input_type=Boolean(optional=True), prefix="--depth", doc=InputDocumentation(doc="neighborhood depth (int)")), ToolInput(tag="in_depot", input_type=Boolean(optional=True), prefix="--depot", doc=InputDocumentation(doc="depot path (string)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zoom_V0_1_0().translate("wdl", allow_empty_container=True)

