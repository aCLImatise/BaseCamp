from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Blossom5_V0_1_0 = CommandToolBuilder(tool="blossom5", base_command=["blossom5"], inputs=[ToolInput(tag="in_see", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_usage_dot_txt", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blossom5_V0_1_0().translate("wdl", allow_empty_container=True)

