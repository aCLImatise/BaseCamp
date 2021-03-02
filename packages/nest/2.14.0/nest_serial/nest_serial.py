from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nest_Serial_V0_1_0 = CommandToolBuilder(tool="nest_serial", base_command=["nest_serial"], inputs=[ToolInput(tag="in_script", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nest_Serial_V0_1_0().translate("wdl", allow_empty_container=True)

