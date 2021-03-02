from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Deployment_Manager_Manifests_V0_1_0 = CommandToolBuilder(tool="gcloud_deployment_manager_manifests", base_command=["gcloud", "deployment-manager", "manifests"], inputs=[ToolInput(tag="in_manifests", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_describe", input_type=String(), position=0, doc=InputDocumentation(doc="Provide information about a manifest.")), ToolInput(tag="in_list", input_type=String(), position=1, doc=InputDocumentation(doc="List manifests in a deployment."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Deployment_Manager_Manifests_V0_1_0().translate("wdl", allow_empty_container=True)

