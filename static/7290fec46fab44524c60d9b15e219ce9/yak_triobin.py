from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Yak_Triobin_V0_1_0 = CommandToolBuilder(tool="yak_triobin", base_command=["yak", "triobin"], inputs=[ToolInput(tag="in_min_occurrence", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="min occurrence [2]")), ToolInput(tag="in_mid_occurrence", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="mid occurrence [5]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [8]")), ToolInput(tag="in_pat_dot_yak", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mat_dot_yak", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_dot_fa", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/yak:0.1--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yak_Triobin_V0_1_0().translate("wdl")

