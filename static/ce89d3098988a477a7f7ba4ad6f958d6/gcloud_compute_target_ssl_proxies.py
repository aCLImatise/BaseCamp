from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Target_Ssl_Proxies_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_target_ssl_proxies", base_command=["gcloud", "compute", "target-ssl-proxies"], inputs=[ToolInput(tag="in_proxies", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Create a target SSL proxy.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete target SSL proxies.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Display detailed information about a target SSL proxy.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="List Google Compute Engine target SSL proxies.")), ToolInput(tag="in_update", input_type=String(), position=4, doc=InputDocumentation(doc="Update a target SSL proxy."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Target_Ssl_Proxies_V0_1_0().translate("wdl", allow_empty_container=True)

