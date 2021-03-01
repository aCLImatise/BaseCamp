from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Components_Remove_V0_1_0 = CommandToolBuilder(tool="gcloud_components_remove", base_command=["gcloud", "components", "remove"], inputs=[ToolInput(tag="in_component_id", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_optional", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_flags", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Components_Remove_V0_1_0().translate("wdl", allow_empty_container=True)

