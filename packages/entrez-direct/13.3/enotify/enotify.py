from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Enotify_V0_1_0 = CommandToolBuilder(tool="enotify", base_command=["enotify"], inputs=[ToolInput(tag="in_email", input_type=Boolean(optional=True), prefix="-email", doc=InputDocumentation(doc="Contact person's address")), ToolInput(tag="in_tool", input_type=Boolean(optional=True), prefix="-tool", doc=InputDocumentation(doc="Name of script or program"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enotify_V0_1_0().translate("wdl", allow_empty_container=True)

