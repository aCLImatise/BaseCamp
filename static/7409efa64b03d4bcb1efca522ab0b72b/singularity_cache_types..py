from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Singularity_Cache_Types__V0_1_0 = CommandToolBuilder(tool="singularity_cache_types.", base_command=["singularity", "cache", "types."], inputs=[ToolInput(tag="in_clean", input_type=String(), position=0, doc=InputDocumentation(doc="Clean your local Singularity cache")), ToolInput(tag="in_list", input_type=String(), position=1, doc=InputDocumentation(doc="List your local Singularity cache"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singularity_Cache_Types__V0_1_0().translate("wdl", allow_empty_container=True)

