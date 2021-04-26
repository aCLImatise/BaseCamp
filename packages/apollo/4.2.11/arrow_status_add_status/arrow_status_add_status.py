from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Status_Add_Status_V0_1_0 = CommandToolBuilder(tool="arrow_status_add_status", base_command=["arrow", "status", "add_status"], inputs=[ToolInput(tag="in_status", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Status_Add_Status_V0_1_0().translate("wdl")

