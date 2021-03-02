from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Refseqget_V0_1_0 = CommandToolBuilder(tool="refseqget", base_command=["refseqget"], inputs=[ToolInput(tag="in_ref_sequence", input_type=Boolean(optional=True), prefix="-refsequence", doc=InputDocumentation(doc=": enter refseq value: Error: Unable to get reply from user - end of standard input"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refseqget_V0_1_0().translate("wdl", allow_empty_container=True)

