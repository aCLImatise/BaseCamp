from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Fastx_Len_Filter_Py_V0_1_0 = CommandToolBuilder(tool="fastx_len_filter.py", base_command=["fastx_len_filter.py"], inputs=[ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min_len", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastx_Len_Filter_Py_V0_1_0().translate("wdl", allow_empty_container=True)

