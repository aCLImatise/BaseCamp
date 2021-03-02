from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Runamos_V0_1_0 = CommandToolBuilder(tool="runAmos", base_command=["runAmos"], inputs=[ToolInput(tag="in_allows_variables_defined", input_type=File(optional=True), prefix="-D", doc=InputDocumentation(doc="allows variables to be defined outside of the conf file.\nmultiple such options are allowed")), ToolInput(tag="in_c", input_type=File(optional=True), prefix="-C", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runamos_V0_1_0().translate("wdl", allow_empty_container=True)

