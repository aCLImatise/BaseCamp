from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cva_Check_Login_Password_V0_1_0 = CommandToolBuilder(tool="cva_check_login_password", base_command=["cva", "check-login", "password"], inputs=[ToolInput(tag="in_cva", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_check_login", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_username", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_password", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cva_Check_Login_Password_V0_1_0().translate("wdl")

