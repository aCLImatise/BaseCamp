from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Service_Management_Operations_V0_1_0 = CommandToolBuilder(tool="gcloud_service_management_operations", base_command=["gcloud", "service-management", "operations"], inputs=[ToolInput(tag="in_services", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_describe", input_type=String(), position=0, doc=InputDocumentation(doc="Describes an operation resource for a given operation name.")), ToolInput(tag="in_wait", input_type=String(), position=1, doc=InputDocumentation(doc="Waits for an operation to complete."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Service_Management_Operations_V0_1_0().translate("wdl", allow_empty_container=True)

