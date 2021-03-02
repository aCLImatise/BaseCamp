from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Psltopslx_V0_1_0 = CommandToolBuilder(tool="pslToPslx", base_command=["pslToPslx"], inputs=[ToolInput(tag="in_masked", input_type=Boolean(optional=True), prefix="-masked", doc=InputDocumentation(doc="- if specified, repeats are in lower case cases, otherwise entire\nsequence is loader case.\n")), ToolInput(tag="in_in_dot_psl", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_q_seq_spec", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tseq_spec", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Psltopslx_V0_1_0().translate("wdl", allow_empty_container=True)

