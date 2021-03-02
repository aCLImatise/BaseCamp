from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Singularity_Oci_Mount_V0_1_0 = CommandToolBuilder(tool="singularity_oci_mount", base_command=["singularity", "oci", "mount"], inputs=[ToolInput(tag="in_singularity", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_global", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_options_dot_dot_dot", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_oci", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_mount", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_s_if_image", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singularity_Oci_Mount_V0_1_0().translate("wdl", allow_empty_container=True)

