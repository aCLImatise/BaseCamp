from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Starwrapper_Py_V0_1_0 = CommandToolBuilder(tool="STARwrapper.py", base_command=["STARwrapper.py"], inputs=[ToolInput(tag="in_cpus", input_type=String(optional=True), prefix="--cpus", doc=InputDocumentation(doc="")), ToolInput(tag="in_wrapper", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_running", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_star_long_dot", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Starwrapper_Py_V0_1_0().translate("wdl", allow_empty_container=True)

