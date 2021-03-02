from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Fwdppconfig_V0_1_0 = CommandToolBuilder(tool="fwdppConfig", base_command=["fwdppConfig"], inputs=[ToolInput(tag="in_print", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_version", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_number", input_type=Int(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_and", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fwdppconfig_V0_1_0().translate("wdl", allow_empty_container=True)

