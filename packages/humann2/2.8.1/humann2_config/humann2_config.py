from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Humann2_Config_V0_1_0 = CommandToolBuilder(tool="humann2_config", base_command=["humann2_config"], inputs=[ToolInput(tag="in_print", input_type=Boolean(optional=True), prefix="--print", doc=InputDocumentation(doc="print the configuration")), ToolInput(tag="in_update", input_type=String(optional=True), prefix="--update", doc=InputDocumentation(doc="<name> <value>\nupdate the section : name to the value provided\n")), ToolInput(tag="in_name", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_value", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Config_V0_1_0().translate("wdl", allow_empty_container=True)

