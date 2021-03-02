from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Merauder_Option____V0_1_0 = CommandToolBuilder(tool="merauder_OPTION...", base_command=["merauder", "OPTION..."], inputs=[ToolInput(tag="in_max", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_insert", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_size", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_is", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_required", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merauder_Option____V0_1_0().translate("wdl", allow_empty_container=True)

