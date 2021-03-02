from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dr_Disco_Blacklisted__V0_1_0 = CommandToolBuilder(tool="dr_disco_blacklisted.", base_command=["dr-disco", "blacklisted."], inputs=[ToolInput(tag="in_dr_disco", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dr_Disco_Blacklisted__V0_1_0().translate("wdl", allow_empty_container=True)

