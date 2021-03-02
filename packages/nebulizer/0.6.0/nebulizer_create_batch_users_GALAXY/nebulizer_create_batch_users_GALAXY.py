from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Nebulizer_Create_Batch_Users_Galaxy_V0_1_0 = CommandToolBuilder(tool="nebulizer_create_batch_users_GALAXY", base_command=["nebulizer", "create_batch_users", "GALAXY"], inputs=[ToolInput(tag="in_password", input_type=String(optional=True), prefix="--password", doc=InputDocumentation(doc="specify password for new user accounts (otherwise\nprogram will prompt for password). All accounts will be\ncreated with the same password.")), ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="check user details but don't try to create the new")), ToolInput(tag="in_account_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--help               Show this message and exit."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Create_Batch_Users_Galaxy_V0_1_0().translate("wdl", allow_empty_container=True)

