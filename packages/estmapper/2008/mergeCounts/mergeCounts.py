from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Mergecounts_V0_1_0 = CommandToolBuilder(tool="mergeCounts", base_command=["mergeCounts"], inputs=[ToolInput(tag="in_count_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_count_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergecounts_V0_1_0().translate("wdl", allow_empty_container=True)

