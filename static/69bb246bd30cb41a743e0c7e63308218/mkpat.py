from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mkpat_V0_1_0 = CommandToolBuilder(tool="mkpat", base_command=["mkpat"], inputs=[ToolInput(tag="in_xsize", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ysize", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mkpat_V0_1_0().translate("wdl", allow_empty_container=True)

