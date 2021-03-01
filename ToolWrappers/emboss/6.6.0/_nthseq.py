from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Nthseq_V0_1_0 = CommandToolBuilder(tool="_nthseq", base_command=["_nthseq"], inputs=[ToolInput(tag="in_number", input_type=Boolean(optional=True), prefix="-number", doc=InputDocumentation(doc="integer    [1] The number of the sequence to output\n(Integer 1 or more)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Nthseq_V0_1_0().translate("wdl", allow_empty_container=True)

