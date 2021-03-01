from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Body_Pl_V0_1_0 = CommandToolBuilder(tool="body.pl", base_command=["body.pl"], inputs=[ToolInput(tag="in_include_blank_lines", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc=": Do *not* include blank lines when counting (default counts them).")), ToolInput(tag="in_skip", input_type=Boolean(optional=True), prefix="-skip", doc=InputDocumentation(doc="<n1,n2...>: Exclude line numbers n1,n2...")), ToolInput(tag="in_select", input_type=Boolean(optional=True), prefix="-select", doc=InputDocumentation(doc="<n1,n2>:  Select line numbers n1,n2..."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Body_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

