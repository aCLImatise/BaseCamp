from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gtf_Transcript_Splicesites_V0_1_0 = CommandToolBuilder(tool="gtf_transcript_splicesites", base_command=["gtf_transcript_splicesites"], inputs=[ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtf_Transcript_Splicesites_V0_1_0().translate("wdl", allow_empty_container=True)

