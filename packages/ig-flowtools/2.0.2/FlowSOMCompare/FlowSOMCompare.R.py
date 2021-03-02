from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Flowsomcompare_R_V0_1_0 = CommandToolBuilder(tool="FlowSOMCompare.R", base_command=["FlowSOMCompare.R"], inputs=[ToolInput(tag="in_union", input_type=String(), position=0, doc=InputDocumentation(doc="Attaching package: 'flowCore'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flowsomcompare_R_V0_1_0().translate("wdl", allow_empty_container=True)

