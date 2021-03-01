from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Igdiscover_Dbdiff_V0_1_0 = CommandToolBuilder(tool="igdiscover_dbdiff", base_command=["igdiscover", "dbdiff"], inputs=[ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Whether to colorize output\n")), ToolInput(tag="in_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_b", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Dbdiff_V0_1_0().translate("wdl", allow_empty_container=True)

