from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Sdmodify_V0_1_0 = CommandToolBuilder(tool="sdmodify", base_command=["sdmodify"], inputs=[ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_data_field", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sd_files", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sdmodify_V0_1_0().translate("wdl", allow_empty_container=True)

