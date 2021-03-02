from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float

Canu_Time_V0_1_0 = CommandToolBuilder(tool="canu_time", base_command=["canu-time"], inputs=[ToolInput(tag="in_zero_dot_zero_zero", input_type=Float(), position=0, doc=InputDocumentation(doc="0.00      0.00     0.000     0.000 -2777777.78   Sat Nov 20 17:46:39 2286   Thu Jan  1 00:00:00 1970"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Canu_Time_V0_1_0().translate("wdl", allow_empty_container=True)

