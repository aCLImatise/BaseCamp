from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sickle_V0_1_0 = CommandToolBuilder(tool="sickle", base_command=["sickle"], inputs=[ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sickle_V0_1_0().translate("wdl", allow_empty_container=True)

