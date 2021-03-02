from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Clear_Hca_Cache_V0_1_0 = CommandToolBuilder(tool="hca_clear_hca_cache", base_command=["hca", "clear-hca-cache"], inputs=[ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log-level", doc=InputDocumentation(doc="")), ToolInput(tag="in_hca", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Clear_Hca_Cache_V0_1_0().translate("wdl", allow_empty_container=True)

