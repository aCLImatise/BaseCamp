from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Xpn_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_xpn", base_command=["gcloud", "compute", "xpn"], inputs=[ToolInput(tag="in_associated_projects", input_type=String(), position=0, doc=InputDocumentation(doc="Configure associated projects for cross-project networking (XPN).")), ToolInput(tag="in_organizations", input_type=String(), position=1, doc=InputDocumentation(doc="Configure organizations for cross-project networking (XPN).")), ToolInput(tag="in_disable", input_type=String(), position=0, doc=InputDocumentation(doc="Disable the given project as an XPN host.")), ToolInput(tag="in_enable", input_type=String(), position=1, doc=InputDocumentation(doc="Enable the given project as an XPN host.")), ToolInput(tag="in_get_host_project", input_type=String(), position=2, doc=InputDocumentation(doc="Get the XPN host project that the given project is linked to.")), ToolInput(tag="in_list_associated_resources", input_type=String(), position=3, doc=InputDocumentation(doc="List the resources that can use the given project via XPN."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Xpn_V0_1_0().translate("wdl", allow_empty_container=True)

