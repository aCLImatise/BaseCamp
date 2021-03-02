from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Icount_Man_Annotate_V0_1_0 = CommandToolBuilder(tool="iCount_man_annotate", base_command=["iCount", "man", "annotate"], inputs=[ToolInput(tag="in_mode", input_type=Boolean(optional=True), prefix="--mode", doc=InputDocumentation(doc="")), ToolInput(tag="in_i_count", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_man", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Icount_Man_Annotate_V0_1_0().translate("wdl", allow_empty_container=True)

