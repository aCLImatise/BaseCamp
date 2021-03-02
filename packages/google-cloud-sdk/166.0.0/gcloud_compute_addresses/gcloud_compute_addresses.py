from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Addresses_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_addresses", base_command=["gcloud", "compute", "addresses"], inputs=[ToolInput(tag="in_addresses", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Reserve IP addresses.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Release reserved IP addresses.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Display detailed information about an address.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="List addresses."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Addresses_V0_1_0().translate("wdl", allow_empty_container=True)

