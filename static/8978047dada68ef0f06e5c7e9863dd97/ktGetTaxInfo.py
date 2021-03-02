from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String

Ktgettaxinfo_V0_1_0 = CommandToolBuilder(tool="ktGetTaxInfo", base_command=["ktGetTaxInfo"], inputs=[ToolInput(tag="in_a_zero_zero_zero_zero_one_dot_one", input_type=Float(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ids", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_grep", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_line", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tag", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_example", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktgettaxinfo_V0_1_0().translate("wdl", allow_empty_container=True)

