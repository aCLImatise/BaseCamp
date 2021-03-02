from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Orderchr_V0_1_0 = CommandToolBuilder(tool="orderchr", base_command=["orderchr"], inputs=[ToolInput(tag="in_links", input_type=File(optional=True), prefix="-links", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orderchr_V0_1_0().translate("wdl", allow_empty_container=True)

