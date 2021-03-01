from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hmmindex2_V0_1_0 = CommandToolBuilder(tool="hmmindex2", base_command=["hmmindex2"], inputs=[ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_hmm_index", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hmm_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmindex2_V0_1_0().translate("wdl", allow_empty_container=True)

