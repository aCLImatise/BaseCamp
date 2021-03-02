from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pindel_V0_1_0 = CommandToolBuilder(tool="pindel", base_command=["pindel"], inputs=[ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_confidence_range_b", input_type=String(), position=0, doc=InputDocumentation(doc="Example: DEL chr1 10000 50 chr2 20000 100 "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pindel_V0_1_0().translate("wdl", allow_empty_container=True)

