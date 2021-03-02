from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Deployment_Manager_Deployments_V0_1_0 = CommandToolBuilder(tool="gcloud_deployment_manager_deployments", base_command=["gcloud", "deployment-manager", "deployments"], inputs=[ToolInput(tag="in_deployments", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_cancel_preview", input_type=String(), position=0, doc=InputDocumentation(doc="Cancel a pending or running deployment preview.")), ToolInput(tag="in_create", input_type=String(), position=1, doc=InputDocumentation(doc="Create a deployment.")), ToolInput(tag="in_delete", input_type=String(), position=2, doc=InputDocumentation(doc="Delete a deployment.")), ToolInput(tag="in_describe", input_type=String(), position=3, doc=InputDocumentation(doc="Provide information about a deployment.")), ToolInput(tag="in_list", input_type=String(), position=4, doc=InputDocumentation(doc="List deployments in a project.")), ToolInput(tag="in_stop", input_type=String(), position=5, doc=InputDocumentation(doc="Stop a pending or running deployment update or creation.")), ToolInput(tag="in_update", input_type=String(), position=6, doc=InputDocumentation(doc="Update a deployment based on a provided config file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Deployment_Manager_Deployments_V0_1_0().translate("wdl", allow_empty_container=True)

