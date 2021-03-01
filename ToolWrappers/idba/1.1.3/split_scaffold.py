from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Split_Scaffold_V0_1_0 = CommandToolBuilder(tool="split_scaffold", base_command=["split_scaffold"], inputs=[ToolInput(tag="in_scaffold_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Scaffold_V0_1_0().translate("wdl", allow_empty_container=True)

