from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_App_Instances_V0_1_0 = CommandToolBuilder(tool="gcloud_app_instances", base_command=["gcloud", "app", "instances"], inputs=[ToolInput(tag="in_delete", input_type=String(), position=0, doc=InputDocumentation(doc="Delete a specified instance.")), ToolInput(tag="in_describe", input_type=String(), position=1, doc=InputDocumentation(doc="Display all data about an existing instance.")), ToolInput(tag="in_disable_debug", input_type=String(), position=2, doc=InputDocumentation(doc="Disables debug mode for an instance.")), ToolInput(tag="in_enable_debug", input_type=String(), position=3, doc=InputDocumentation(doc="Enables debug mode for an instance.")), ToolInput(tag="in_list", input_type=String(), position=4, doc=InputDocumentation(doc="List the instances affiliated with the current App Engine project.")), ToolInput(tag="in_scp", input_type=String(), position=5, doc=InputDocumentation(doc="SCP from or to the VM of an App Engine Flexible instance.")), ToolInput(tag="in_ssh", input_type=String(), position=6, doc=InputDocumentation(doc="SSH into the VM of an App Engine Flexible instance."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_App_Instances_V0_1_0().translate("wdl", allow_empty_container=True)

