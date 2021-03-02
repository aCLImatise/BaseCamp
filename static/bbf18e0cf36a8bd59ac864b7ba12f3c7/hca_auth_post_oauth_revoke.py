from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Auth_Post_Oauth_Revoke_V0_1_0 = CommandToolBuilder(tool="hca_auth_post_oauth_revoke", base_command=["hca", "auth", "post-oauth-revoke"], inputs=[ToolInput(tag="in_client_id", input_type=String(optional=True), prefix="--client-id", doc=InputDocumentation(doc="The refresh token to revoke."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Auth_Post_Oauth_Revoke_V0_1_0().translate("wdl", allow_empty_container=True)

