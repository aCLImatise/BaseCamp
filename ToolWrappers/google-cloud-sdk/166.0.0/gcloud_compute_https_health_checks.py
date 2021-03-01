from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Https_Health_Checks_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_https_health_checks", base_command=["gcloud", "compute", "https-health-checks"], inputs=[ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Create an HTTPS health check to monitor load balanced instances.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete HTTPS health checks.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Display detailed information about an HTTPS health check.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="List Google Compute Engine HTTPS health checks.")), ToolInput(tag="in_update", input_type=String(), position=4, doc=InputDocumentation(doc="Update an HTTPS health check."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Https_Health_Checks_V0_1_0().translate("wdl", allow_empty_container=True)

