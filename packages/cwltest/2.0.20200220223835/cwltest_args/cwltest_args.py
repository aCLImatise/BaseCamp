from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Cwltest_Args_V0_1_0 = CommandToolBuilder(tool="cwltest_args", base_command=["cwltest", "args"], inputs=[ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_basedir", input_type=String(optional=True), prefix="--basedir", doc=InputDocumentation(doc="")), ToolInput(tag="in_test", input_type=String(optional=True), prefix="--test", doc=InputDocumentation(doc="")), ToolInput(tag="in_cwl_test", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cwltest_Args_V0_1_0().translate("wdl", allow_empty_container=True)

