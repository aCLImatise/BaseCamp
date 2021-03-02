from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bwamempy_V0_1_0 = CommandToolBuilder(tool="bwamempy", base_command=["bwamempy"], inputs=[ToolInput(tag="in_align", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_with", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_bwa", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_me_mdot", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_index", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwamempy_V0_1_0().translate("wdl", allow_empty_container=True)

