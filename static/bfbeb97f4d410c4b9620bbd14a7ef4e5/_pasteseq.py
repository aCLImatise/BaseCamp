from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Pasteseq_V0_1_0 = CommandToolBuilder(tool="_pasteseq", base_command=["_pasteseq"], inputs=[ToolInput(tag="in_pos", input_type=Boolean(optional=True), prefix="-pos", doc=InputDocumentation(doc="integer    [$(asequence.end)] The position in the main\ninput sequence to insert after.\nTo insert before the start use the position\n0. (Integer 0 or more)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Pasteseq_V0_1_0().translate("wdl", allow_empty_container=True)

