from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Msp_Upgrade_Destination_V0_1_0 = CommandToolBuilder(tool="msp_upgrade_destination", base_command=["msp", "upgrade", "destination"], inputs=[ToolInput(tag="in_msp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_upgrade", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_source", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_destination", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msp_Upgrade_Destination_V0_1_0().translate("wdl", allow_empty_container=True)

