from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Seqretsetall_V0_1_0 = CommandToolBuilder(tool="seqretsetall", base_command=["seqretsetall"], inputs=[ToolInput(tag="in_feature", input_type=Boolean(optional=True), prefix="-feature", doc=InputDocumentation(doc="boolean    Use feature information"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqretsetall_V0_1_0().translate("wdl", allow_empty_container=True)

