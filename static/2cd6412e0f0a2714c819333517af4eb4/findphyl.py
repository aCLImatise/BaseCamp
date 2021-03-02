from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Findphyl_V0_1_0 = CommandToolBuilder(tool="findphyl", base_command=["findphyl"], inputs=[ToolInput(tag="in_limit", input_type=String(optional=True), prefix="--limit", doc=InputDocumentation(doc="")), ToolInput(tag="in_rate_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_col_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findphyl_V0_1_0().translate("wdl", allow_empty_container=True)

