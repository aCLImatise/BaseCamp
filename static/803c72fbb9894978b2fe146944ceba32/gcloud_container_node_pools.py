from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Gcloud_Container_Node_Pools_V0_1_0 = CommandToolBuilder(tool="gcloud_container_node_pools", base_command=["gcloud", "container", "node-pools"], inputs=[ToolInput(tag="in_zone", input_type=Int(optional=True), prefix="--zone", doc=InputDocumentation(doc="The compute zone (e.g. us-central1-a) for the cluster. Overrides the\ndefault compute/zone property value for this command invocation.")), ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Create a node pool in a running cluster.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete an existing node pool in a running cluster.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Describe an existing node pool for a cluster.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="List existing node pools for a cluster.")), ToolInput(tag="in_rollback", input_type=String(), position=4, doc=InputDocumentation(doc="Rollback a node-pool upgrade."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Container_Node_Pools_V0_1_0().translate("wdl", allow_empty_container=True)

