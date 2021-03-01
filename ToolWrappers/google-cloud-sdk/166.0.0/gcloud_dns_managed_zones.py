from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Dns_Managed_Zones_V0_1_0 = CommandToolBuilder(tool="gcloud_dns_managed_zones", base_command=["gcloud", "dns", "managed-zones"], inputs=[ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Create a Cloud DNS managed-zone.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete an empty Cloud DNS managed-zone.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="View the details of a Cloud DNS managed-zone.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="View the list of all your managed-zones."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Dns_Managed_Zones_V0_1_0().translate("wdl", allow_empty_container=True)

