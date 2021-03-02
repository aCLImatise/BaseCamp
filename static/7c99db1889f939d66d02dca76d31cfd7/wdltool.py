from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Wdltool_V0_1_0 = CommandToolBuilder(tool="wdltool", base_command=["wdltool"], inputs=[ToolInput(tag="in_workflow_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Fill in the values in this JSON document and"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wdltool_V0_1_0().translate("wdl", allow_empty_container=True)

