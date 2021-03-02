from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rgt_Hint_Data_V0_1_0 = CommandToolBuilder(tool="rgt_hint_data", base_command=["rgt-hint", "data"], inputs=[ToolInput(tag="in_rgt_hint", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Hint_Data_V0_1_0().translate("wdl", allow_empty_container=True)

