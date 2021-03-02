from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Minimap_Lite_V0_1_0 = CommandToolBuilder(tool="minimap_lite", base_command=["minimap-lite"], inputs=[ToolInput(tag="in_target_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Minimap_Lite_V0_1_0().translate("wdl", allow_empty_container=True)

