from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Lusstr_V0_1_0 = CommandToolBuilder(tool="lusstr", base_command=["lusstr"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_sub_cmd", input_type=String(), position=0, doc=InputDocumentation(doc="annotate, format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lusstr_V0_1_0().translate("wdl", allow_empty_container=True)

