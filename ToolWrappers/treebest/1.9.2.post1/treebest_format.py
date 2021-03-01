from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Treebest_Format_V0_1_0 = CommandToolBuilder(tool="treebest_format", base_command=["treebest", "format"], inputs=[ToolInput(tag="in_one", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="")), ToolInput(tag="in_tree", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treebest_Format_V0_1_0().translate("wdl", allow_empty_container=True)

