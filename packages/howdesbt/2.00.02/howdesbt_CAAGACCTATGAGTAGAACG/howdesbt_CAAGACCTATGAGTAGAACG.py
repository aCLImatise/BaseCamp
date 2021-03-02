from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Howdesbt_Caagacctatgagtagaacg_V0_1_0 = CommandToolBuilder(tool="howdesbt_CAAGACCTATGAGTAGAACG", base_command=["howdesbt", "CAAGACCTATGAGTAGAACG"], inputs=[ToolInput(tag="in_how_des_bt", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_arguments", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Howdesbt_Caagacctatgagtagaacg_V0_1_0().translate("wdl", allow_empty_container=True)

