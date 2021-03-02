from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Target_Vpn_Gateways_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_target_vpn_gateways", base_command=["gcloud", "compute", "target-vpn-gateways"], inputs=[ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Create a target VPN Gateway.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete target vpn gateways.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Describe a Google Compute Engine target vpn gateway.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="List Google Compute Engine target VPN gateways."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Target_Vpn_Gateways_V0_1_0().translate("wdl", allow_empty_container=True)

