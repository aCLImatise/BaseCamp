from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Singularity_Remote_Login_V0_1_0 = CommandToolBuilder(tool="singularity_remote_login", base_command=["singularity", "remote", "login"], inputs=[ToolInput(tag="in_token_file", input_type=File(optional=True), prefix="--tokenfile", doc=InputDocumentation(doc="path to the file holding token")), ToolInput(tag="in_login", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_options_dot_dot_dot", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singularity_Remote_Login_V0_1_0().translate("wdl", allow_empty_container=True)

