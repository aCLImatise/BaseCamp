from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Shuffleseq_V0_1_0 = CommandToolBuilder(tool="shuffleseq", base_command=["shuffleseq"], inputs=[ToolInput(tag="in_shuffle", input_type=Boolean(optional=True), prefix="-shuffle", doc=InputDocumentation(doc="integer    [1] Number of shuffles (Any integer value)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shuffleseq_V0_1_0().translate("wdl", allow_empty_container=True)

