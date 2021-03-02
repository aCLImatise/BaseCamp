from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Hca_Dss_Get_Bundles_Checkout_V0_1_0 = CommandToolBuilder(tool="hca_dss_get_bundles_checkout", base_command=["hca", "dss", "get-bundles-checkout"], inputs=[ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="Replica to fetch from.")), ToolInput(tag="in_rfccompliant_id_checkout", input_type=Int(optional=True), prefix="--checkout-job-id", doc=InputDocumentation(doc="A RFC4122-compliant ID for the checkout job request.\n")), ToolInput(tag="in_use_route_returned", input_type=String(), position=0, doc=InputDocumentation(doc="Use this route with the `checkout_job_id` identifier returned by `POST /bundles/{uuid}/checkout`."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Get_Bundles_Checkout_V0_1_0().translate("wdl", allow_empty_container=True)

