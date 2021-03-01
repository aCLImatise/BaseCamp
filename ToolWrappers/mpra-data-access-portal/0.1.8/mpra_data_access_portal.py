from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mpra_Data_Access_Portal_V0_1_0 = CommandToolBuilder(tool="mpra_data_access_portal", base_command=["mpra-data-access-portal"], inputs=[ToolInput(tag="in_self_test", input_type=Boolean(optional=True), prefix="--self-test", doc=InputDocumentation(doc="Run self-check and tests"))], outputs=[], container="quay.io/biocontainers/mpra-data-access-portal:0.1.8--2", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mpra_Data_Access_Portal_V0_1_0().translate("wdl")

