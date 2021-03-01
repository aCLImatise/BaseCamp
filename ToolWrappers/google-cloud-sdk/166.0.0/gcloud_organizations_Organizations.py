from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Organizations_Organizations_V0_1_0 = CommandToolBuilder(tool="gcloud_organizations_Organizations", base_command=["gcloud", "organizations", "Organizations"], inputs=[ToolInput(tag="in_g_cloud", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_organizations", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_optional", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_flags", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Organizations_Organizations_V0_1_0().translate("wdl", allow_empty_container=True)

