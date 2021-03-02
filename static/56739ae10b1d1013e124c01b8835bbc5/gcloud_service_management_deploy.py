from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gcloud_Service_Management_Deploy_V0_1_0 = CommandToolBuilder(tool="gcloud_service_management_deploy", base_command=["gcloud", "service-management", "deploy"], inputs=[ToolInput(tag="in_async", input_type=Boolean(optional=True), prefix="--async", doc=InputDocumentation(doc="Display information about the operation in progress, without waiting\nfor the operation to complete.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force the deployment even if any hazardous changes to the service\nconfiguration are detected.")), ToolInput(tag="in_validate_only", input_type=Boolean(optional=True), prefix="--validate-only", doc=InputDocumentation(doc="If included, the command will only validate the service\nconfiguration(s). No configuration(s) will be persisted."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Service_Management_Deploy_V0_1_0().translate("wdl", allow_empty_container=True)

