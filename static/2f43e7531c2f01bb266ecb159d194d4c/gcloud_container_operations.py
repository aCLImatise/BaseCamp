from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Gcloud_Container_Operations_V0_1_0 = CommandToolBuilder(tool="gcloud_container_operations", base_command=["gcloud", "container", "operations"], inputs=[ToolInput(tag="in_zone", input_type=Int(optional=True), prefix="--zone", doc=InputDocumentation(doc="The compute zone (e.g. us-central1-a) for the cluster. Overrides the\ndefault compute/zone property value for this command invocation.")), ToolInput(tag="in_describe", input_type=String(), position=0, doc=InputDocumentation(doc="Describe an operation.")), ToolInput(tag="in_list", input_type=String(), position=1, doc=InputDocumentation(doc="List operations for container clusters.")), ToolInput(tag="in_wait", input_type=String(), position=2, doc=InputDocumentation(doc="Poll an operation for completion."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Container_Operations_V0_1_0().translate("wdl", allow_empty_container=True)

