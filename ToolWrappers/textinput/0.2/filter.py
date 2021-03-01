from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Filter_V0_1_0 = CommandToolBuilder(tool="filter", base_command=["filter"], inputs=[ToolInput(tag="in_no_header", input_type=Boolean(optional=True), prefix="--no-header", doc=InputDocumentation(doc="input does not contain a header line"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_V0_1_0().translate("wdl", allow_empty_container=True)

