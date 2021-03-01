from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Restclient_Url_Name_V0_1_0 = CommandToolBuilder(tool="restclient_url|name", base_command=["restclient", "url|name"], inputs=[ToolInput(tag="in_rest_client", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_get_vertical_line_put_vertical_line_post_vertical_line_delete", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_url_vertical_line_name", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_username", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_password", input_type=String(optional=True), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Restclient_Url_Name_V0_1_0().translate("wdl", allow_empty_container=True)

