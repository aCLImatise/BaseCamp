from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Gcloud_Container_Clusters_V0_1_0 = CommandToolBuilder(tool="gcloud_container_clusters", base_command=["gcloud", "container", "clusters"], inputs=[ToolInput(tag="in_zone", input_type=Int(optional=True), prefix="--zone", doc=InputDocumentation(doc="The compute zone (e.g. us-central1-a) for the cluster. Overrides the\ndefault compute/zone property value for this command invocation.")), ToolInput(tag="in_clusters", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_clusters_dot", input_type=String(), position=0, doc=InputDocumentation(doc="FLAGS")), ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Create a cluster for running containers.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete an existing cluster for running containers.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Describe an existing cluster for running containers.")), ToolInput(tag="in_get_credentials", input_type=String(), position=3, doc=InputDocumentation(doc="Fetch credentials for a running cluster.")), ToolInput(tag="in_list", input_type=String(), position=4, doc=InputDocumentation(doc="List existing clusters for running containers.")), ToolInput(tag="in_resize", input_type=String(), position=5, doc=InputDocumentation(doc="Resizes an existing cluster for running containers.")), ToolInput(tag="in_update", input_type=String(), position=6, doc=InputDocumentation(doc="Update cluster settings for an existing container cluster.")), ToolInput(tag="in_upgrade", input_type=String(), position=7, doc=InputDocumentation(doc="Upgrade the Kubernetes version of an existing container cluster."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Container_Clusters_V0_1_0().translate("wdl", allow_empty_container=True)

