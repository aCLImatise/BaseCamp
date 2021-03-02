from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bttoxin_Scanner_V0_1_0 = CommandToolBuilder(tool="BtToxin_scanner", base_command=["BtToxin_scanner"], inputs=[ToolInput(tag="in_exit", input_type=String(), position=0, doc=InputDocumentation(doc="[--threads (INT)]             Number of threads to be used ( Default 4 )"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bttoxin_Scanner_V0_1_0().translate("wdl", allow_empty_container=True)

