from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gmtime_V0_1_0 = CommandToolBuilder(tool="gmtime", base_command=["gmtime"], inputs=[ToolInput(tag="in_time_stamp", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gmtime_V0_1_0().translate("wdl", allow_empty_container=True)

