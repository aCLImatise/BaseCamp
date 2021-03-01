from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Status_Findstatusbyvalue_V0_1_0 = CommandToolBuilder(tool="arrow_status_findStatusByValue", base_command=["arrow", "status", "findStatusByValue"], inputs=[ToolInput(tag="in_value", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Status_Findstatusbyvalue_V0_1_0().translate("wdl", allow_empty_container=True)

