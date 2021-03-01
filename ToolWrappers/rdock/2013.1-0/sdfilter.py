from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Sdfilter_V0_1_0 = CommandToolBuilder(tool="sdfilter", base_command=["sdfilter"], inputs=[ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sdfilter_V0_1_0().translate("wdl", allow_empty_container=True)

