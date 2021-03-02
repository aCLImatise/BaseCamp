from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Networks_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_networks", base_command=["gcloud", "compute", "networks"], inputs=[ToolInput(tag="in_networks", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_peering_s", input_type=String(), position=0, doc=InputDocumentation(doc="List, create, and delete Google Compute Engine network peerings.")), ToolInput(tag="in_subnets", input_type=String(), position=1, doc=InputDocumentation(doc="List, describe, and delete Google Compute Engine subnetworks.")), ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Create a Google Compute Engine network.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete Google Compute Engine networks.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Describe a Google Compute Engine network.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="List Google Compute Engine networks.")), ToolInput(tag="in_switch_mode", input_type=String(), position=4, doc=InputDocumentation(doc="Switch the mode of a Google Compute Engine network."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Networks_V0_1_0().translate("wdl", allow_empty_container=True)

