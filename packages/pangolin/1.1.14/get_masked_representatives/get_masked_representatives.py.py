from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Get_Masked_Representatives_Py_V0_1_0 = CommandToolBuilder(tool="get_masked_representatives.py", base_command=["get_masked_representatives.py"], inputs=[ToolInput(tag="in_representatives", input_type=String(optional=True), prefix="--representatives", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Masked_Representatives_Py_V0_1_0().translate("wdl", allow_empty_container=True)

