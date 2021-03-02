from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Target_Pools_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_target_pools", base_command=["gcloud", "compute", "target-pools"], inputs=[ToolInput(tag="in_add_health_checks", input_type=String(), position=0, doc=InputDocumentation(doc="Add an HTTP health check to a target pool.")), ToolInput(tag="in_add_instances", input_type=String(), position=1, doc=InputDocumentation(doc="Add instances to a target pool.")), ToolInput(tag="in_create", input_type=String(), position=2, doc=InputDocumentation(doc="Define a load-balanced pool of virtual machine instances.")), ToolInput(tag="in_delete", input_type=String(), position=3, doc=InputDocumentation(doc="Delete target pools.")), ToolInput(tag="in_describe", input_type=String(), position=4, doc=InputDocumentation(doc="Describe a Google Compute Engine target pool.")), ToolInput(tag="in_get_health", input_type=String(), position=5, doc=InputDocumentation(doc="Get the health of instances in a target pool.")), ToolInput(tag="in_list", input_type=String(), position=6, doc=InputDocumentation(doc="List Google Compute Engine target pools.")), ToolInput(tag="in_remove_health_checks", input_type=String(), position=7, doc=InputDocumentation(doc="Remove an HTTP health check from a target pool.")), ToolInput(tag="in_remove_instances", input_type=String(), position=8, doc=InputDocumentation(doc="Remove instances from a target pool.")), ToolInput(tag="in_set_backup", input_type=String(), position=9, doc=InputDocumentation(doc="Set a backup pool for a target pool."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Target_Pools_V0_1_0().translate("wdl", allow_empty_container=True)

