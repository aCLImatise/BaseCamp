from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Pphs_V0_1_0 = CommandToolBuilder(tool="pphs", base_command=["pphs"], inputs=[ToolInput(tag="in_dict", input_type=Boolean(optional=True), prefix="--dict", doc=InputDocumentation(doc=":1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:93/200(L)--"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pphs_V0_1_0().translate("wdl", allow_empty_container=True)

