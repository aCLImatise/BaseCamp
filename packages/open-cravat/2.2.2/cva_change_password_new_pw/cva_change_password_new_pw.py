from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cva_Change_Password_New_Pw_V0_1_0 = CommandToolBuilder(tool="cva_change_password_new_pw", base_command=["cva", "change-password", "new_pw"], inputs=[ToolInput(tag="in_cva", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_change_password", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_username", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_cur_pw", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_new_pw", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cva_Change_Password_New_Pw_V0_1_0().translate("wdl")

