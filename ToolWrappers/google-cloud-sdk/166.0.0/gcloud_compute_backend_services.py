from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Backend_Services_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_backend_services", base_command=["gcloud", "compute", "backend-services"], inputs=[ToolInput(tag="in_add_backend", input_type=String(), position=0, doc=InputDocumentation(doc="Add a backend to a backend service.")), ToolInput(tag="in_create", input_type=String(), position=1, doc=InputDocumentation(doc="Create a backend service.")), ToolInput(tag="in_delete", input_type=String(), position=2, doc=InputDocumentation(doc="Delete backend services.")), ToolInput(tag="in_describe", input_type=String(), position=3, doc=InputDocumentation(doc="Display detailed information about a backend service.")), ToolInput(tag="in_edit", input_type=String(), position=4, doc=InputDocumentation(doc="Modify backend services.")), ToolInput(tag="in_get_health", input_type=String(), position=5, doc=InputDocumentation(doc="Get backend health statuses from a backend service.")), ToolInput(tag="in_list", input_type=String(), position=6, doc=InputDocumentation(doc="List Google Compute Engine backend services.")), ToolInput(tag="in_remove_backend", input_type=String(), position=7, doc=InputDocumentation(doc="Remove a backend from a backend service.")), ToolInput(tag="in_update", input_type=String(), position=8, doc=InputDocumentation(doc="Update a backend service.")), ToolInput(tag="in_update_backend", input_type=String(), position=9, doc=InputDocumentation(doc="Update an existing backend in a backend service."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Backend_Services_V0_1_0().translate("wdl", allow_empty_container=True)

