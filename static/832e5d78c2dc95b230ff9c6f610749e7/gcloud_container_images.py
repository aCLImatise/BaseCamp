from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Container_Images_V0_1_0 = CommandToolBuilder(tool="gcloud_container_images", base_command=["gcloud", "container", "images"], inputs=[ToolInput(tag="in_images", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_add_tag", input_type=String(), position=0, doc=InputDocumentation(doc="Adds tags to existing image.")), ToolInput(tag="in_delete", input_type=String(), position=1, doc=InputDocumentation(doc="Delete existing images.")), ToolInput(tag="in_list", input_type=String(), position=2, doc=InputDocumentation(doc="List existing images.")), ToolInput(tag="in_list_tags", input_type=String(), position=3, doc=InputDocumentation(doc="List tags and digests for the specified image.")), ToolInput(tag="in_un_tag", input_type=String(), position=4, doc=InputDocumentation(doc="Remove existing image tags."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Container_Images_V0_1_0().translate("wdl", allow_empty_container=True)

