from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dexqv_V0_1_0 = CommandToolBuilder(tool="dexqv", base_command=["dexqv"], inputs=[ToolInput(tag="in_v_kl", input_type=Boolean(optional=True), prefix="-vkl", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dexqv_V0_1_0().translate("wdl", allow_empty_container=True)

