from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Lwp_Dump_V0_1_0 = CommandToolBuilder(tool="lwp_dump", base_command=["lwp-dump"], inputs=[ToolInput(tag="in_url", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lwp_Dump_V0_1_0().translate("wdl", allow_empty_container=True)

