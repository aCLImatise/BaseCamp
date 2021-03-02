from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nextflow_Bak_Cloud_Create_V0_1_0 = CommandToolBuilder(tool="nextflow.bak_cloud_create", base_command=["nextflow.bak", "cloud", "create"], inputs=[ToolInput(tag="in_instance_count", input_type=Boolean(optional=True), prefix="-instance-count", doc=InputDocumentation(doc="Instances count")), ToolInput(tag="in_image_id", input_type=Boolean(optional=True), prefix="-image-id", doc=InputDocumentation(doc="Image ID")), ToolInput(tag="in_instance_type", input_type=Boolean(optional=True), prefix="-instance-type", doc=InputDocumentation(doc="Instance type")), ToolInput(tag="in_spot_price", input_type=Boolean(optional=True), prefix="-spot-price", doc=InputDocumentation(doc="Price for spot/preemptive instances")), ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="-region", doc=InputDocumentation(doc="The region to use. Overrides config/env settings.")), ToolInput(tag="in_profile", input_type=Boolean(optional=True), prefix="-profile", doc=InputDocumentation(doc="Configuration profile")), ToolInput(tag="in_skip_launch_confirmation", input_type=Boolean(optional=True), prefix="-y", doc=InputDocumentation(doc="Skip launch confirmation\n")), ToolInput(tag="in_cluster_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextflow_Bak_Cloud_Create_V0_1_0().translate("wdl", allow_empty_container=True)

