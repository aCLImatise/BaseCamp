from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Auth_Revoke_V0_1_0 = CommandToolBuilder(tool="gcloud_auth_revoke", base_command=["gcloud", "auth", "revoke"], inputs=[ToolInput(tag="in_accounts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_optional", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_flags", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Auth_Revoke_V0_1_0().translate("wdl", allow_empty_container=True)

