from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nebulizer_Create_User_Account_V0_1_0 = CommandToolBuilder(tool="nebulizer_create_user_account", base_command=["nebulizer", "create_user", "account"], inputs=[ToolInput(tag="in_nebulizer", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_create_user", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_galaxy", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_email", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_public_name", input_type=String(optional=True), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Create_User_Account_V0_1_0().translate("wdl", allow_empty_container=True)

