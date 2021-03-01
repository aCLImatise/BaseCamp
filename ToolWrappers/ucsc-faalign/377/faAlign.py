from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Faalign_V0_1_0 = CommandToolBuilder(tool="faAlign", base_command=["faAlign"], inputs=[ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="-dna", doc=InputDocumentation(doc="- use DNA scoring scheme")), ToolInput(tag="in_target_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Faalign_V0_1_0().translate("wdl", allow_empty_container=True)

