from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hailctl_Dataproc_Connect_V0_1_0 = CommandToolBuilder(tool="hailctl_dataproc_connect", base_command=["hailctl", "dataproc", "connect"], inputs=[ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="")), ToolInput(tag="in_zone", input_type=String(optional=True), prefix="--zone", doc=InputDocumentation(doc="")), ToolInput(tag="in_port", input_type=String(optional=True), prefix="--port", doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="{notebook,nb,spark-ui,ui,spark-ui1,ui1,spark-ui2,ui2,spark-history,hist}"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Dataproc_Connect_V0_1_0().translate("wdl", allow_empty_container=True)

