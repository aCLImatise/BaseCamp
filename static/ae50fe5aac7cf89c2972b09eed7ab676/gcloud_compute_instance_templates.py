from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Instance_Templates_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_instance_templates", base_command=["gcloud", "compute", "instance-templates"], inputs=[ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Create a Compute Engine virtual machine instance template.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete Google Compute Engine virtual machine instance templates.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Describe a virtual machine instance template.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="List Google Compute Engine instance templates."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Instance_Templates_V0_1_0().translate("wdl", allow_empty_container=True)

