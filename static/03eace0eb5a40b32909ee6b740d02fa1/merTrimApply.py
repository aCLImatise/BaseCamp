from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mertrimapply_V0_1_0 = CommandToolBuilder(tool="merTrimApply", base_command=["merTrimApply"], inputs=[ToolInput(tag="in_var_0", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_2", input_type=String(optional=True), prefix="-L", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mertrimapply_V0_1_0().translate("wdl", allow_empty_container=True)

