from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rmiregistry_V0_1_0 = CommandToolBuilder(tool="rmiregistry", base_command=["rmiregistry"], inputs=[ToolInput(tag="in_runtime_flag_pass", input_type=Boolean(optional=True), prefix="-J", doc=InputDocumentation(doc="<runtime flag> Pass argument to the java interpreter")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_port", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rmiregistry_V0_1_0().translate("wdl", allow_empty_container=True)

