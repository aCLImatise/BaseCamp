from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Routers_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_routers", base_command=["gcloud", "compute", "routers"], inputs=[ToolInput(tag="in_routers", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_add_bgp_peer", input_type=String(), position=0, doc=InputDocumentation(doc="Add a BGP peer to a Google Compute Engine router.")), ToolInput(tag="in_add_interface", input_type=String(), position=1, doc=InputDocumentation(doc="Add an interface to a Google Compute Engine router.")), ToolInput(tag="in_create", input_type=String(), position=2, doc=InputDocumentation(doc="Create a Google Compute Engine router.")), ToolInput(tag="in_delete", input_type=String(), position=3, doc=InputDocumentation(doc="Delete Google Compute Engine routers.")), ToolInput(tag="in_describe", input_type=String(), position=4, doc=InputDocumentation(doc="Describe a Google Compute Engine router.")), ToolInput(tag="in_get_status", input_type=String(), position=5, doc=InputDocumentation(doc="Get status of a Google Compute Engine router.")), ToolInput(tag="in_list", input_type=String(), position=6, doc=InputDocumentation(doc="List Google Compute Engine routers.")), ToolInput(tag="in_remove_bgp_peer", input_type=String(), position=7, doc=InputDocumentation(doc="Remove a BGP peer from a Google Compute Engine router.")), ToolInput(tag="in_remove_interface", input_type=String(), position=8, doc=InputDocumentation(doc="Remove an interface from a Google Compute Engine router.")), ToolInput(tag="in_update_bgp_peer", input_type=String(), position=9, doc=InputDocumentation(doc="Update a BGP peer on a Google Compute Engine router.")), ToolInput(tag="in_update_interface", input_type=String(), position=10, doc=InputDocumentation(doc="Update an interface on a Google Compute Engine router."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Routers_V0_1_0().translate("wdl", allow_empty_container=True)

