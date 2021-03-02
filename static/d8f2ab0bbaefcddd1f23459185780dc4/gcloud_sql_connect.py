from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Sql_Connect_V0_1_0 = CommandToolBuilder(tool="gcloud_sql_connect", base_command=["gcloud", "sql", "connect"], inputs=[ToolInput(tag="in_instance", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_optional", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_flags", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Sql_Connect_V0_1_0().translate("wdl", allow_empty_container=True)

