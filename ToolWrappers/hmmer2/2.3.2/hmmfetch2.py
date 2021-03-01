from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hmmfetch2_V0_1_0 = CommandToolBuilder(tool="hmmfetch2", base_command=["hmmfetch2"], inputs=[ToolInput(tag="in_interpret_hmm_name", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": interpret <HMM name> instead as an HMM number (0..nhmm-1)")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_hmm_fetch", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hmm_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_hmm_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmfetch2_V0_1_0().translate("wdl", allow_empty_container=True)

