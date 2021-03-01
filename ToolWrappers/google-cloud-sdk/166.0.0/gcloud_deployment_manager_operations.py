from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Deployment_Manager_Operations_V0_1_0 = CommandToolBuilder(tool="gcloud_deployment_manager_operations", base_command=["gcloud", "deployment-manager", "operations"], inputs=[ToolInput(tag="in_operations", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_describe", input_type=String(), position=0, doc=InputDocumentation(doc="Provide information about an operation.")), ToolInput(tag="in_list", input_type=String(), position=1, doc=InputDocumentation(doc="List operations in a project.")), ToolInput(tag="in_wait", input_type=String(), position=2, doc=InputDocumentation(doc="Wait for all operations specified to complete before returning."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Deployment_Manager_Operations_V0_1_0().translate("wdl", allow_empty_container=True)

