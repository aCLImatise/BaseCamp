from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dirname_V0_1_0 = CommandToolBuilder(tool="dirname", base_command=["dirname"], inputs=[ToolInput(tag="in_end_output_line", input_type=Boolean(optional=True), prefix="--zero", doc=InputDocumentation(doc="end each output line with NUL, not newline")), ToolInput(tag="in_name_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dirname_V0_1_0().translate("wdl", allow_empty_container=True)

