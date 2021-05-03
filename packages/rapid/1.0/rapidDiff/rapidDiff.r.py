from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rapiddiff_R_V0_1_0 = CommandToolBuilder(tool="rapidDiff.r", base_command=["rapidDiff.r"], inputs=[ToolInput(tag="in_expand_dot_grid", input_type=String(), position=0, doc=InputDocumentation(doc="Loading required package: IRanges")), ToolInput(tag="in_lowess", input_type=String(), position=2, doc=InputDocumentation(doc="Error in file(file, 'rt') : cannot open the connection"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rapiddiff_R_V0_1_0().translate("wdl", allow_empty_container=True)

