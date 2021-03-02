from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Fqtools_Command_V0_1_0 = CommandToolBuilder(tool="fqtools_COMMAND", base_command=["fqtools", "COMMAND"], inputs=[ToolInput(tag="in_var_0", input_type=String(optional=True), prefix="-F", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_1", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_3", input_type=String(optional=True), prefix="-B", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_4", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_hv_dram_uli", input_type=Boolean(optional=True), prefix="-hvdramuli", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fqtools_Command_V0_1_0().translate("wdl", allow_empty_container=True)

