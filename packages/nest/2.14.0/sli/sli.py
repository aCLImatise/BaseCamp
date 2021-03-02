from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Sli_V0_1_0 = CommandToolBuilder(tool="sli", base_command=["sli"], inputs=[ToolInput(tag="in_execute_cmd_exit", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="Execute cmd and exit")), ToolInput(tag="in_user_args", input_type=Int(optional=True), prefix="--userargs", doc=InputDocumentation(doc=":...   put user defined arguments in statusdict::userargs")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="start in debug mode (implies --verbosity=ALL)")), ToolInput(tag="in_nest", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sli_V0_1_0().translate("wdl", allow_empty_container=True)

