from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_App_Services_V0_1_0 = CommandToolBuilder(tool="gcloud_app_services", base_command=["gcloud", "app", "services"], inputs=[ToolInput(tag="in_browse", input_type=String(), position=0, doc=InputDocumentation(doc="Open the specified service(s) in a browser.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete services in the current project.")), ToolInput(tag="in_describe", input_type=String(), position=2, doc=InputDocumentation(doc="Display all data about an existing service.")), ToolInput(tag="in_list", input_type=String(), position=3, doc=InputDocumentation(doc="List your existing services.")), ToolInput(tag="in_set_traffic", input_type=String(), position=4, doc=InputDocumentation(doc="Set traffic splitting settings."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_App_Services_V0_1_0().translate("wdl", allow_empty_container=True)

