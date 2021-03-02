from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Bttcmp_V0_1_0 = CommandToolBuilder(tool="bttcmp", base_command=["bttcmp"], inputs=[ToolInput(tag="in_example", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_two", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_three", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_four", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_five", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_six", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seven", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_main", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_usage", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_is", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_as", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_follows", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bttcmp_V0_1_0().translate("wdl", allow_empty_container=True)

