from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hyphy_Mt_V0_1_0 = CommandToolBuilder(tool="hyphy_mt", base_command=["hyphy", "mt"], inputs=[ToolInput(tag="in_i", input_type=String(), position=0, doc=InputDocumentation(doc="i=0;")), ToolInput(tag="in_branch_under_condition", input_type=String(), position=1, doc=InputDocumentation(doc="Branch under condition 'echoFlag'")), ToolInput(tag="in_fprintfstdout", input_type=String(), position=2, doc=InputDocumentation(doc="fprintf(stdout, '\n|------------|-------|-----------|------------|');")), ToolInput(tag="in_return", input_type=String(), position=3, doc=InputDocumentation(doc="return 0;"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hyphy_Mt_V0_1_0().translate("wdl", allow_empty_container=True)

