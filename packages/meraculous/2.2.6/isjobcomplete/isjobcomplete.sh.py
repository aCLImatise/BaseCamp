from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Isjobcomplete_Sh_V0_1_0 = CommandToolBuilder(tool="isjobcomplete.sh", base_command=["isjobcomplete.sh"], inputs=[ToolInput(tag="in_running", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="/running"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isjobcomplete_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

