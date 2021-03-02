from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Running_Cmp_V0_1_0 = CommandToolBuilder(tool="running_cmp", base_command=["running-cmp"], inputs=[ToolInput(tag="in_file_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Running_Cmp_V0_1_0().translate("wdl", allow_empty_container=True)

