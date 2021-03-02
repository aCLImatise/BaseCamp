from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Stringify_V0_1_0 = CommandToolBuilder(tool="stringify", base_command=["stringify"], inputs=[ToolInput(tag="in_var", input_type=String(optional=True), prefix="-var", doc=InputDocumentation(doc="- create a variable with the specified name containing\nthe string.")), ToolInput(tag="in_static", input_type=Boolean(optional=True), prefix="-static", doc=InputDocumentation(doc="- create the variable but put static in front of it.")), ToolInput(tag="in_array", input_type=Boolean(optional=True), prefix="-array", doc=InputDocumentation(doc="- create an array of strings, one for each line"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stringify_V0_1_0().translate("wdl", allow_empty_container=True)

