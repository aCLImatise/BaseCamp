from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float

Dep_Version_V0_1_0 = CommandToolBuilder(tool="dep_version", base_command=["dep", "version"], inputs=[ToolInput(tag="in_version", input_type=String(), position=0, doc=InputDocumentation(doc=": devel")), ToolInput(tag="in_go_one_dot_one_three_dot_five", input_type=Float(), position=0, doc=InputDocumentation(doc="go compiler : gc")), ToolInput(tag="in_platform", input_type=String(), position=1, doc=InputDocumentation(doc=": linux/amd64")), ToolInput(tag="in_features", input_type=String(), position=2, doc=InputDocumentation(doc=": ImportDuringSolve=false"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dep_Version_V0_1_0().translate("wdl", allow_empty_container=True)

