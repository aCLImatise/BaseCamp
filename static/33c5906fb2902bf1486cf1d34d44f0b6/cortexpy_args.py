from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cortexpy_Args_V0_1_0 = CommandToolBuilder(tool="cortexpy_args", base_command=["cortexpy", "args"], inputs=[ToolInput(tag="in_cortex_py", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cortexpy_Args_V0_1_0().translate("wdl", allow_empty_container=True)

