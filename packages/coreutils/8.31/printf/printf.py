from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Printf_V0_1_0 = CommandToolBuilder(tool="printf", base_command=["printf"], inputs=[ToolInput(tag="in_format", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_argument", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Printf_V0_1_0().translate("wdl", allow_empty_container=True)

