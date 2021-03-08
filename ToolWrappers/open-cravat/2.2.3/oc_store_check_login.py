from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Oc_Store_Check_Login_V0_1_0 = CommandToolBuilder(tool="oc_store_check_login", base_command=["oc", "store", "check-login"], inputs=[ToolInput(tag="in_username", input_type=String(), position=0, doc=InputDocumentation(doc="username")), ToolInput(tag="in_password", input_type=String(), position=1, doc=InputDocumentation(doc="password"))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oc_Store_Check_Login_V0_1_0().translate("wdl")

