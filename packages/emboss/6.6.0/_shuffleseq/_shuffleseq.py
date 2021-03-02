from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Shuffleseq_V0_1_0 = CommandToolBuilder(tool="_shuffleseq", base_command=["_shuffleseq"], inputs=[ToolInput(tag="in_shuffle", input_type=Boolean(optional=True), prefix="-shuffle", doc=InputDocumentation(doc="integer    [1] Number of shuffles (Any integer value)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Shuffleseq_V0_1_0().translate("wdl", allow_empty_container=True)

