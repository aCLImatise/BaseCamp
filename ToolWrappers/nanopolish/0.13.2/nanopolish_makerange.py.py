from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Nanopolish_Makerange_Py_V0_1_0 = CommandToolBuilder(tool="nanopolish_makerange.py", base_command=["nanopolish_makerange.py"], inputs=[ToolInput(tag="in_segment_length", input_type=Int(optional=True), prefix="--segment-length", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanopolish_Makerange_Py_V0_1_0().translate("wdl", allow_empty_container=True)

