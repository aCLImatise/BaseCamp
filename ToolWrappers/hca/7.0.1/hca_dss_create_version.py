from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Dss_Create_Version_V0_1_0 = CommandToolBuilder(tool="hca_dss_create_version", base_command=["hca", "dss", "create-version"], inputs=[ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log-level", doc=InputDocumentation(doc="")), ToolInput(tag="in_hca", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Create_Version_V0_1_0().translate("wdl", allow_empty_container=True)

