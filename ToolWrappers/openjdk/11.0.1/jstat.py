from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Jstat_V0_1_0 = CommandToolBuilder(tool="jstat", base_command=["jstat"], inputs=[ToolInput(tag="in_flag_pass_flag", input_type=Boolean(optional=True), prefix="-J", doc=InputDocumentation(doc="<flag>      Pass <flag> directly to the runtime system."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jstat_V0_1_0().translate("wdl", allow_empty_container=True)

