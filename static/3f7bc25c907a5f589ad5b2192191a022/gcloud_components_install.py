from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Components_Install_V0_1_0 = CommandToolBuilder(tool="gcloud_components_install", base_command=["gcloud", "components", "install"], inputs=[ToolInput(tag="in_component_ids", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_optional", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_flags", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Components_Install_V0_1_0().translate("wdl", allow_empty_container=True)

