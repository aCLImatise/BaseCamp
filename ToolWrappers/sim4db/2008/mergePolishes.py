from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Mergepolishes_V0_1_0 = CommandToolBuilder(tool="mergePolishes", base_command=["mergePolishes"], inputs=[ToolInput(tag="in_m", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_cdna", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cdna_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_cdna_two", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergepolishes_V0_1_0().translate("wdl", allow_empty_container=True)

