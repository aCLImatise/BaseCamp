from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Instance_Groups_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_instance_groups", base_command=["gcloud", "compute", "instance-groups"], inputs=[ToolInput(tag="in_managed", input_type=String(), position=0, doc=InputDocumentation(doc="Read and manipulate Google Compute Engine managed instance groups.")), ToolInput(tag="in_unmanaged", input_type=String(), position=1, doc=InputDocumentation(doc="Read and manipulate Google Compute Engine unmanaged instance group.")), ToolInput(tag="in_describe", input_type=String(), position=0, doc=InputDocumentation(doc="Display detailed information about an instance group.")), ToolInput(tag="in_get_named_ports", input_type=String(), position=1, doc=InputDocumentation(doc="Lists the named ports for an instance group resource.")), ToolInput(tag="in_list", input_type=String(), position=2, doc=InputDocumentation(doc="List Google Compute Engine instance groups.")), ToolInput(tag="in_list_instances", input_type=String(), position=3, doc=InputDocumentation(doc="List instances present in the instance group.")), ToolInput(tag="in_set_named_ports", input_type=String(), position=4, doc=InputDocumentation(doc="Sets the list of named ports for an instance group."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Instance_Groups_V0_1_0().translate("wdl", allow_empty_container=True)

