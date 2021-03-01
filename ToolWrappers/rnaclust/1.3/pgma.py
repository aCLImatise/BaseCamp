from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pgma_V0_1_0 = CommandToolBuilder(tool="pgma", base_command=["pgma"], inputs=[ToolInput(tag="in_names", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_distances", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pgma_V0_1_0().translate("wdl", allow_empty_container=True)

