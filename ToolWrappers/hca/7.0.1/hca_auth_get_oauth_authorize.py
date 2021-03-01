from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Auth_Get_Oauth_Authorize_V0_1_0 = CommandToolBuilder(tool="hca_auth_get_oauth_authorize", base_command=["hca", "auth", "get-oauth-authorize"], inputs=[ToolInput(tag="in_redirect_uri", input_type=String(optional=True), prefix="--redirect-uri", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Auth_Get_Oauth_Authorize_V0_1_0().translate("wdl", allow_empty_container=True)

