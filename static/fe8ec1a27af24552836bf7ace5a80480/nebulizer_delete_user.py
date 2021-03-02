from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nebulizer_Delete_User_V0_1_0 = CommandToolBuilder(tool="nebulizer_delete_user", base_command=["nebulizer", "delete_user"], inputs=[ToolInput(tag="in_purge", input_type=Boolean(optional=True), prefix="--purge", doc=InputDocumentation(doc="also purge (permanently delete) the user.")), ToolInput(tag="in_yes", input_type=Boolean(optional=True), prefix="--yes", doc=InputDocumentation(doc="don't ask for confirmation of deletions.")), ToolInput(tag="in_galaxy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_email", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Delete_User_V0_1_0().translate("wdl", allow_empty_container=True)

