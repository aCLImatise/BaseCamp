from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dexta_V0_1_0 = CommandToolBuilder(tool="dexta", base_command=["dexta"], inputs=[ToolInput(tag="in_vk", input_type=Boolean(optional=True), prefix="-vk", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dexta_V0_1_0().translate("wdl", allow_empty_container=True)

