from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dbdust_V0_1_0 = CommandToolBuilder(tool="DBdust", base_command=["DBdust"], inputs=[ToolInput(tag="in_b", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbdust_V0_1_0().translate("wdl", allow_empty_container=True)

