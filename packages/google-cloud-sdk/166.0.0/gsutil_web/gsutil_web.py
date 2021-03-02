from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Gsutil_Web_V0_1_0 = CommandToolBuilder(tool="gsutil_web", base_command=["gsutil", "web"], inputs=[ToolInput(tag="in_specifies_object_name", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="Specifies the object name to serve when a bucket\nlisting is requested via the CNAME alias to\nc.storage.googleapis.com.")), ToolInput(tag="in_specifies_error_page", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="Specifies the error page to serve when a request is made\nfor a non-existent object via the CNAME alias to\nc.storage.googleapis.com.")), ToolInput(tag="in_page_dot", input_type=String(), position=0, doc=InputDocumentation(doc="For example, suppose your company's Domain name is example.com. You could set"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Web_V0_1_0().translate("wdl", allow_empty_container=True)

