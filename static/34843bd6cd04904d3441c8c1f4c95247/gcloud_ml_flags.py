from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Ml_Flags_V0_1_0 = CommandToolBuilder(tool="gcloud_ml_flags", base_command=["gcloud", "ml", "flags"], inputs=[ToolInput(tag="in_g_cloud", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ml", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_optional", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_flags", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_group", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Ml_Flags_V0_1_0().translate("wdl", allow_empty_container=True)

