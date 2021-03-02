from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

_Patmatmotifs_V0_1_0 = CommandToolBuilder(tool="_patmatmotifs", base_command=["_patmatmotifs"], inputs=[ToolInput(tag="in_full", input_type=Boolean(optional=True), prefix="-full", doc=InputDocumentation(doc="boolean    [N] Provide full documentation for matching")), ToolInput(tag="in_patterns", input_type=String(), position=0, doc=InputDocumentation(doc="-[no]prune          boolean    [Y] Ignore simple patterns. If this is true"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Patmatmotifs_V0_1_0().translate("wdl", allow_empty_container=True)

