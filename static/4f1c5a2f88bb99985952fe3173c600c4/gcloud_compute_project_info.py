from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Project_Info_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_project_info", base_command=["gcloud", "compute", "project-info"], inputs=[ToolInput(tag="in_add_metadata", input_type=String(), position=0, doc=InputDocumentation(doc="Add or update project-wide metadata.")), ToolInput(tag="in_describe", input_type=String(), position=1, doc=InputDocumentation(doc="Describe the Google Compute Engine project resource.")), ToolInput(tag="in_remove_metadata", input_type=String(), position=2, doc=InputDocumentation(doc="Remove project-wide metadata entries.")), ToolInput(tag="in_set_usage_bucket", input_type=String(), position=3, doc=InputDocumentation(doc="Set the usage reporting bucket for a project."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Project_Info_V0_1_0().translate("wdl", allow_empty_container=True)

