from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Lyner_Read_V0_1_0 = CommandToolBuilder(tool="lyner_read", base_command=["lyner", "read"], inputs=[ToolInput(tag="in_matrix", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Read_V0_1_0().translate("wdl", allow_empty_container=True)

