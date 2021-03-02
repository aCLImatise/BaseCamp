from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Undexqv_V0_1_0 = CommandToolBuilder(tool="undexqv", base_command=["undexqv"], inputs=[ToolInput(tag="in_v_ku", input_type=Boolean(optional=True), prefix="-vkU", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Undexqv_V0_1_0().translate("wdl", allow_empty_container=True)

