from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sdfield_V0_1_0 = CommandToolBuilder(tool="sdfield", base_command=["sdfield"], inputs=[ToolInput(tag="in_field_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_value", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sdfield_V0_1_0().translate("wdl", allow_empty_container=True)

