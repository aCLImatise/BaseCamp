from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mktime_V0_1_0 = CommandToolBuilder(tool="mktime", base_command=["mktime"], inputs=[ToolInput(tag="in_yyyy_mm_dd", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hh", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mktime_V0_1_0().translate("wdl", allow_empty_container=True)

