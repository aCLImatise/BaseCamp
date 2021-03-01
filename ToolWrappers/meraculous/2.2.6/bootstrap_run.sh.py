from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bootstrap_Run_Sh_V0_1_0 = CommandToolBuilder(tool="bootstrap_run.sh", base_command=["bootstrap_run.sh"], inputs=[ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bootstrap_Run_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

