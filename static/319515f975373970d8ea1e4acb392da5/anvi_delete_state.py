from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Anvi_Delete_State_V0_1_0 = CommandToolBuilder(tool="anvi_delete_state", base_command=["anvi-delete-state"], inputs=[ToolInput(tag="in_pan_or_profile_db", input_type=String(optional=True), prefix="--pan-or-profile-db", doc=InputDocumentation(doc="Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts).")), ToolInput(tag="in_list_states", input_type=Boolean(optional=True), prefix="--list-states", doc=InputDocumentation(doc="Show available states and exit.")), ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Delete_State_V0_1_0().translate("wdl", allow_empty_container=True)

