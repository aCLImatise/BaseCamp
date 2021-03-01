from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Container_Builds_V0_1_0 = CommandToolBuilder(tool="gcloud_container_builds", base_command=["gcloud", "container", "builds"], inputs=[ToolInput(tag="in_cancel", input_type=String(), position=0, doc=InputDocumentation(doc="Cancel an ongoing build.")), ToolInput(tag="in_describe", input_type=String(), position=1, doc=InputDocumentation(doc="Get information about a particular build.")), ToolInput(tag="in_list", input_type=String(), position=2, doc=InputDocumentation(doc="List builds.")), ToolInput(tag="in_log", input_type=String(), position=3, doc=InputDocumentation(doc="Stream the logs for a build.")), ToolInput(tag="in_submit", input_type=String(), position=4, doc=InputDocumentation(doc="Submit a build using the Google Container Builder service."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Container_Builds_V0_1_0().translate("wdl", allow_empty_container=True)

