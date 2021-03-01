from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dircolors_V0_1_0 = CommandToolBuilder(tool="dircolors", base_command=["dircolors"], inputs=[ToolInput(tag="in_bourne_shell", input_type=Boolean(optional=True), prefix="--bourne-shell", doc=InputDocumentation(doc="output Bourne shell code to set LS_COLORS")), ToolInput(tag="in_c_shell", input_type=Boolean(optional=True), prefix="--c-shell", doc=InputDocumentation(doc="output C shell code to set LS_COLORS")), ToolInput(tag="in_print_database", input_type=Boolean(optional=True), prefix="--print-database", doc=InputDocumentation(doc="output defaults"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dircolors_V0_1_0().translate("wdl", allow_empty_container=True)

