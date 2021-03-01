from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Cactus2Hal_Py_Cache__V0_1_0 = CommandToolBuilder(tool="cactus2hal.py_cache.", base_command=["cactus2hal.py", "cache."], inputs=[ToolInput(tag="in_cache_bytes", input_type=String(optional=True), prefix="--cacheBytes", doc=InputDocumentation(doc="")), ToolInput(tag="in_event", input_type=String(optional=True), prefix="--event", doc=InputDocumentation(doc="")), ToolInput(tag="in_cactus_two_hal_do_tpy", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus2Hal_Py_Cache__V0_1_0().translate("wdl", allow_empty_container=True)

