from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Trimmomatic_V0_1_0 = CommandToolBuilder(tool="trimmomatic", base_command=["trimmomatic"], inputs=[ToolInput(tag="in_threads", input_type=String(optional=True), prefix="-threads", doc=InputDocumentation(doc="")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="")), ToolInput(tag="in_pe", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trimmomatic_V0_1_0().translate("wdl", allow_empty_container=True)

