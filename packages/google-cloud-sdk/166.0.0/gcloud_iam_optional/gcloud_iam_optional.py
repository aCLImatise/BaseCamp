from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Iam_Optional_V0_1_0 = CommandToolBuilder(tool="gcloud_iam_optional", base_command=["gcloud", "iam", "optional"], inputs=[ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_group_vertical_line_command", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Iam_Optional_V0_1_0().translate("wdl", allow_empty_container=True)

