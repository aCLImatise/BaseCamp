from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Bedextract_Typical_V0_1_0 = CommandToolBuilder(tool="bedextract_typical", base_command=["bedextract-typical"], inputs=[ToolInput(tag="in_zero", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_two", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_three", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedextract_Typical_V0_1_0().translate("wdl", allow_empty_container=True)

