from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Genpoholandscape_V0_1_0 = CommandToolBuilder(tool="genPoHoLandscape", base_command=["genPoHoLandscape"], inputs=[ToolInput(tag="in_p_q_h", input_type=Boolean(optional=True), prefix="-99999999999999999", doc=InputDocumentation(doc="P:2 Q2 H-3"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genpoholandscape_V0_1_0().translate("wdl", allow_empty_container=True)

