from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Jstatd_V0_1_0 = CommandToolBuilder(tool="jstatd", base_command=["jstatd"], inputs=[ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_nr", input_type=Boolean(optional=True), prefix="-nr", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jstatd_V0_1_0().translate("wdl", allow_empty_container=True)

