from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Cannedkeys_Update_Key_V0_1_0 = CommandToolBuilder(tool="arrow_cannedkeys_update_key", base_command=["arrow", "cannedkeys", "update_key"], inputs=[ToolInput(tag="in_metadata", input_type=String(optional=True), prefix="--metadata", doc=InputDocumentation(doc="Optional metadata")), ToolInput(tag="in_id_number", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_new_key", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Cannedkeys_Update_Key_V0_1_0().translate("wdl")

