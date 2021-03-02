from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Cmfetch_Key_V0_1_0 = CommandToolBuilder(tool="cmfetch_key", base_command=["cmfetch", "key"], inputs=[ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_cm_fetch", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cm_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_keyfile", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_key", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmfetch_Key_V0_1_0().translate("wdl", allow_empty_container=True)

