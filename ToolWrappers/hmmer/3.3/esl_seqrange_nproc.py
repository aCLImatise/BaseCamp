from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Esl_Seqrange_Nproc_V0_1_0 = CommandToolBuilder(tool="esl_seqrange_nproc", base_command=["esl-seqrange", "nproc"], inputs=[ToolInput(tag="in_esl_seq_range", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sq_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_proc_idx", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_nproc", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Seqrange_Nproc_V0_1_0().translate("wdl", allow_empty_container=True)

