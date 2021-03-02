from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Classifymatespairwise_V0_1_0 = CommandToolBuilder(tool="classifyMatesPairwise", base_command=["classifyMatesPairwise"], inputs=[ToolInput(tag="in_test", input_type=String(optional=True), prefix="-test", doc=InputDocumentation(doc="")), ToolInput(tag="in_trusted", input_type=String(optional=True), prefix="-trusted", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_2", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_3", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-G", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Classifymatespairwise_V0_1_0().translate("wdl", allow_empty_container=True)

