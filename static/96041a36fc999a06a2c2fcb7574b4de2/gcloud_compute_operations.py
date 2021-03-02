from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Compute_Operations_V0_1_0 = CommandToolBuilder(tool="gcloud_compute_operations", base_command=["gcloud", "compute", "operations"], inputs=[ToolInput(tag="in_operations", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_describe", input_type=String(), position=0, doc=InputDocumentation(doc="Describe a Google Compute Engine operation.")), ToolInput(tag="in_list", input_type=String(), position=1, doc=InputDocumentation(doc="List Google Compute Engine operations."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Compute_Operations_V0_1_0().translate("wdl", allow_empty_container=True)

