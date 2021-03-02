from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Tgtigdisplay_V0_1_0 = CommandToolBuilder(tool="tgTigDisplay", base_command=["tgTigDisplay"], inputs=[ToolInput(tag="in_t", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tgtigdisplay_V0_1_0().translate("wdl", allow_empty_container=True)

