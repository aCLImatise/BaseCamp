from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pore_C_Utils_Args_V0_1_0 = CommandToolBuilder(tool="pore_c_utils_ARGS", base_command=["pore_c", "utils", "ARGS"], inputs=[ToolInput(tag="in_pore_c", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_utils", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pore-c:0.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pore_C_Utils_Args_V0_1_0().translate("wdl")

