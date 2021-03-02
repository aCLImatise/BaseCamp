from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Lwp_Download_V0_1_0 = CommandToolBuilder(tool="lwp_download", base_command=["lwp-download"], inputs=[ToolInput(tag="in_a", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_url", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_l_path", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lwp_Download_V0_1_0().translate("wdl", allow_empty_container=True)

