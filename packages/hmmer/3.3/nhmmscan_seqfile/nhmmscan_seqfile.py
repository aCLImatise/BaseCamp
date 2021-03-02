from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nhmmscan_Seqfile_V0_1_0 = CommandToolBuilder(tool="nhmmscan_seqfile", base_command=["nhmmscan", "seqfile"], inputs=[ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_nh_mms_can", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hmm_db", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nhmmscan_Seqfile_V0_1_0().translate("wdl", allow_empty_container=True)

