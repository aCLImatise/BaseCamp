from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hailctl_Auth_Login_V0_1_0 = CommandToolBuilder(tool="hailctl_auth_login", base_command=["hailctl", "auth", "login"], inputs=[ToolInput(tag="in_namespace", input_type=String(optional=True), prefix="--namespace", doc=InputDocumentation(doc="Specify namespace for auth server. (default: from\ndeploy configuration)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Auth_Login_V0_1_0().translate("wdl", allow_empty_container=True)

