from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Restclient_Get_Put_Post_Delete_V0_1_0 = CommandToolBuilder(tool="restclient_get|put|post|delete", base_command=["restclient", "get|put|post|delete"], inputs=[ToolInput(tag="in_url_vertical_line_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_username", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_password", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Restclient_Get_Put_Post_Delete_V0_1_0().translate("wdl", allow_empty_container=True)

