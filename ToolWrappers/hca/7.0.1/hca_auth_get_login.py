from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Auth_Get_Login_V0_1_0 = CommandToolBuilder(tool="hca_auth_get_login", base_command=["hca", "auth", "get-login"], inputs=[ToolInput(tag="in_redirect_uri", input_type=String(optional=True), prefix="--redirect-uri", doc=InputDocumentation(doc="Where to redirect to once login is complete.")), ToolInput(tag="in_state", input_type=String(optional=True), prefix="--state", doc=InputDocumentation(doc="An opaque parameter that is returned back to the `redirect_uri`."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Auth_Get_Login_V0_1_0().translate("wdl", allow_empty_container=True)

