from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Dss_Get_Subscriptions_V0_1_0 = CommandToolBuilder(tool="hca_dss_get_subscriptions", base_command=["hca", "dss", "get-subscriptions"], inputs=[ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="Replica to fetch from.")), ToolInput(tag="in_subscription_type", input_type=String(optional=True), prefix="--subscription-type", doc=InputDocumentation(doc="Type of subscriptions to fetch (elasticsearch or jmespath).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Get_Subscriptions_V0_1_0().translate("wdl", allow_empty_container=True)

