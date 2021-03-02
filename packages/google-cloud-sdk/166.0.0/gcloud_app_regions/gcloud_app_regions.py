from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_App_Regions_V0_1_0 = CommandToolBuilder(tool="gcloud_app_regions", base_command=["gcloud", "app", "regions"], inputs=[ToolInput(tag="in_environments", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_list", input_type=String(), position=0, doc=InputDocumentation(doc="List the availability of flex and standard environments for each")), ToolInput(tag="in_region_dot", input_type=String(), position=1, doc=InputDocumentation(doc="EXAMPLES"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_App_Regions_V0_1_0().translate("wdl", allow_empty_container=True)

