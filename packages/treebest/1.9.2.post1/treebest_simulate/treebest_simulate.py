from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Boolean

Treebest_Simulate_V0_1_0 = CommandToolBuilder(tool="treebest_simulate", base_command=["treebest", "simulate"], inputs=[ToolInput(tag="in_duplication_probability", input_type=Float(optional=True), prefix="-d", doc=InputDocumentation(doc="duplication probability [0.05]")), ToolInput(tag="in_loss_probability", input_type=Float(optional=True), prefix="-l", doc=InputDocumentation(doc="loss probability [0.01]")), ToolInput(tag="in_loss_probability_duplication", input_type=Float(optional=True), prefix="-p", doc=InputDocumentation(doc="loss probability after duplication [0.25]")), ToolInput(tag="in_max_height", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="max height [0.25]")), ToolInput(tag="in_show_internal_name", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="not show internal name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treebest_Simulate_V0_1_0().translate("wdl", allow_empty_container=True)

