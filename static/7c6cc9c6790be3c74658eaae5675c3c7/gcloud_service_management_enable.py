from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gcloud_Service_Management_Enable_V0_1_0 = CommandToolBuilder(tool="gcloud_service_management_enable", base_command=["gcloud", "service-management", "enable"], inputs=[ToolInput(tag="in_async", input_type=Boolean(optional=True), prefix="--async", doc=InputDocumentation(doc="Display information about the operation in progress, without waiting\nfor the operation to complete.")), ToolInput(tag="in_project", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_service", input_type=String(), position=0, doc=InputDocumentation(doc="The name of the service to enable."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Service_Management_Enable_V0_1_0().translate("wdl", allow_empty_container=True)

