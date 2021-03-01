from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Seqmatchall_V0_1_0 = CommandToolBuilder(tool="_seqmatchall", base_command=["_seqmatchall"], inputs=[ToolInput(tag="in_word_size", input_type=Boolean(optional=True), prefix="-wordsize", doc=InputDocumentation(doc="integer    [4] Word size (Integer 2 or more)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Seqmatchall_V0_1_0().translate("wdl", allow_empty_container=True)

