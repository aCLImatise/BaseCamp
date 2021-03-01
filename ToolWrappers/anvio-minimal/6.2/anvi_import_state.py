from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Anvi_Import_State_V0_1_0 = CommandToolBuilder(tool="anvi_import_state", base_command=["anvi-import-state"], inputs=[ToolInput(tag="in_pan_or_profile_db", input_type=String(optional=True), prefix="--pan-or-profile-db", doc=InputDocumentation(doc="Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts).")), ToolInput(tag="in_state", input_type=File(optional=True), prefix="--state", doc=InputDocumentation(doc="JSON serializable anvi'o state file.")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="State name.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Import_State_V0_1_0().translate("wdl", allow_empty_container=True)

