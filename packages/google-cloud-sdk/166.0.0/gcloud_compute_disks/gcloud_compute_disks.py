from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Disks_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_disks", base_command=["gcloud", "compute", "disks"], inputs=[ToolInput(tag="in_add_labels", input_type=String(), position=0, doc=InputDocumentation(doc="Add labels to Google Compute Engine persistent disks.")), ToolInput(tag="in_create", input_type=String(), position=1, doc=InputDocumentation(doc="Create Google Compute Engine persistent disks.")), ToolInput(tag="in_delete", input_type=String(), position=2, doc=InputDocumentation(doc="Delete Google Compute Engine persistent disks.")), ToolInput(tag="in_describe", input_type=String(), position=3, doc=InputDocumentation(doc="Describe a Google Compute Engine disk.")), ToolInput(tag="in_list", input_type=String(), position=4, doc=InputDocumentation(doc="List Google Compute Engine disks.")), ToolInput(tag="in_move", input_type=String(), position=5, doc=InputDocumentation(doc="Move a disk between zones.")), ToolInput(tag="in_remove_labels", input_type=String(), position=6, doc=InputDocumentation(doc="Remove labels from Google Compute Engine persistent disks.")), ToolInput(tag="in_resize", input_type=String(), position=7, doc=InputDocumentation(doc="Resize a disk or disks.")), ToolInput(tag="in_snapshot", input_type=String(), position=8, doc=InputDocumentation(doc="Create snapshots of Google Compute Engine persistent disks.")), ToolInput(tag="in_update", input_type=String(), position=9, doc=InputDocumentation(doc="Update a Google Compute Engine persistent disk."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Disks_V0_1_0().translate("wdl", allow_empty_container=True)

