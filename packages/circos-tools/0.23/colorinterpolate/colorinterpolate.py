from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Colorinterpolate_V0_1_0 = CommandToolBuilder(tool="colorinterpolate", base_command=["colorinterpolate"], inputs=[ToolInput(tag="in_start", input_type=Int(optional=True), prefix="-start", doc=InputDocumentation(doc=",y1,z1 -end x2,y2,z2 -steps STEPS"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Colorinterpolate_V0_1_0().translate("wdl", allow_empty_container=True)

