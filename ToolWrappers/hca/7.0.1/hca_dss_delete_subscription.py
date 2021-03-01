from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Hca_Dss_Delete_Subscription_V0_1_0 = CommandToolBuilder(tool="hca_dss_delete_subscription", base_command=["hca", "dss", "delete-subscription"], inputs=[ToolInput(tag="in_uuid", input_type=Int(optional=True), prefix="--uuid", doc=InputDocumentation(doc="A RFC4122-compliant ID for the subscription.")), ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="Replica to delete from.")), ToolInput(tag="in_subscription_type", input_type=String(optional=True), prefix="--subscription-type", doc=InputDocumentation(doc="type of subscriptions to fetch (elasticsearch or jmespath)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Delete_Subscription_V0_1_0().translate("wdl", allow_empty_container=True)

