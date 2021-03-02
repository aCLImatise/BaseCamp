from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Itero_Check_Check_V0_1_0 = CommandToolBuilder(tool="itero_check_check", base_command=["itero", "check", "check"], inputs=[ToolInput(tag="in_it_ero", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_check", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Itero_Check_Check_V0_1_0().translate("wdl", allow_empty_container=True)

