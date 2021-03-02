from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hca_Dss_Login_V0_1_0 = CommandToolBuilder(tool="hca_dss_login", base_command=["hca", "dss", "login"], inputs=[ToolInput(tag="in_remote", input_type=Boolean(optional=True), prefix="--remote", doc=InputDocumentation(doc="")), ToolInput(tag="in_access_token", input_type=String(optional=True), prefix="--access-token", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Login_V0_1_0().translate("wdl", allow_empty_container=True)

