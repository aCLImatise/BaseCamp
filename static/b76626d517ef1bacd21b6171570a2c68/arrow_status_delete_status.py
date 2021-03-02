from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Status_Delete_Status_V0_1_0 = CommandToolBuilder(tool="arrow_status_delete_status", base_command=["arrow", "status", "delete_status"], inputs=[ToolInput(tag="in_id_number", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Status_Delete_Status_V0_1_0().translate("wdl", allow_empty_container=True)

