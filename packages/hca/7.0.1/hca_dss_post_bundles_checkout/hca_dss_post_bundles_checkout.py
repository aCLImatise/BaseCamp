from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Hca_Dss_Post_Bundles_Checkout_V0_1_0 = CommandToolBuilder(tool="hca_dss_post_bundles_checkout", base_command=["hca", "dss", "post-bundles-checkout"], inputs=[ToolInput(tag="in_destination", input_type=String(optional=True), prefix="--destination", doc=InputDocumentation(doc="User-owned destination storage bucket.")), ToolInput(tag="in_email", input_type=String(optional=True), prefix="--email", doc=InputDocumentation(doc="An email address to send status updates to.")), ToolInput(tag="in_uuid", input_type=Int(optional=True), prefix="--uuid", doc=InputDocumentation(doc="A RFC4122-compliant ID for the bundle.")), ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="Replica to fetch from."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Post_Bundles_Checkout_V0_1_0().translate("wdl", allow_empty_container=True)

