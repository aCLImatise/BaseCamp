from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fsnviz_No__V0_1_0 = CommandToolBuilder(tool="fsnviz_no.", base_command=["fsnviz", "no."], inputs=[ToolInput(tag="in_fsn_viz", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fsnviz_No__V0_1_0().translate("wdl", allow_empty_container=True)

