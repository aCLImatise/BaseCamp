from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Ecofind_Patterns_V0_1_0 = CommandToolBuilder(tool="ecofind_patterns", base_command=["ecofind", "patterns"], inputs=[ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_1", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_3", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_eco_find", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_rank", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_type", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ecofind_Patterns_V0_1_0().translate("wdl", allow_empty_container=True)

