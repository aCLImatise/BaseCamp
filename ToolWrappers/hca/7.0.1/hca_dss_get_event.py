from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Dss_Get_Event_V0_1_0 = CommandToolBuilder(tool="hca_dss_get_event", base_command=["hca", "dss", "get-event"], inputs=[ToolInput(tag="in_uuid", input_type=String(optional=True), prefix="--uuid", doc=InputDocumentation(doc="Bundle unique ID.")), ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="Replica to fetch from."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Get_Event_V0_1_0().translate("wdl", allow_empty_container=True)

