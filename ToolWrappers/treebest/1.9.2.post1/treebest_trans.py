from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Treebest_Trans_V0_1_0 = CommandToolBuilder(tool="treebest_trans", base_command=["treebest", "trans"], inputs=[ToolInput(tag="in_nucl_alignment", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treebest_Trans_V0_1_0().translate("wdl", allow_empty_container=True)

