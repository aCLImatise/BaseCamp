from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Testfilesystem_Sh_V0_1_0 = CommandToolBuilder(tool="testfilesystem.sh", base_command=["testfilesystem.sh"], inputs=[ToolInput(tag="in_in", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_log", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_size", input_type=Int(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_ways", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_interval_in_seconds", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Testfilesystem_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

