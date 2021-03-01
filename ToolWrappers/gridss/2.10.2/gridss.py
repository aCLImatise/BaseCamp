from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gridss_V0_1_0 = CommandToolBuilder(tool="gridss", base_command=["gridss"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_time", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gridss:2.10.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gridss_V0_1_0().translate("wdl")

