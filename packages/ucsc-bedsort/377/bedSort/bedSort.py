from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bedsort_V0_1_0 = CommandToolBuilder(tool="bedSort", base_command=["bedSort"], inputs=[ToolInput(tag="in_in_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedsort_V0_1_0().translate("wdl", allow_empty_container=True)

