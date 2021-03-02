from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Skipseq_V0_1_0 = CommandToolBuilder(tool="skipseq", base_command=["skipseq"], inputs=[ToolInput(tag="in_skip", input_type=Boolean(optional=True), prefix="-skip", doc=InputDocumentation(doc="integer    [0] Number of sequences to skip at start\n(Any integer value)")), ToolInput(tag="in_feature", input_type=Boolean(optional=True), prefix="-feature", doc=InputDocumentation(doc="boolean    Use feature information"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Skipseq_V0_1_0().translate("wdl", allow_empty_container=True)

