from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Novoutil_Fafilt_V0_1_0 = CommandToolBuilder(tool="novoutil_fafilt", base_command=["novoutil", "fafilt"], inputs=[ToolInput(tag="in_length_limit_default", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="999     Length limit, default 150.")), ToolInput(tag="in_fast_a_files", input_type=String(), position=0, doc=InputDocumentation(doc="is one or more fasta files to be processed.\nInput files may be compressed with gzip or bzip."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novoutil_Fafilt_V0_1_0().translate("wdl", allow_empty_container=True)

