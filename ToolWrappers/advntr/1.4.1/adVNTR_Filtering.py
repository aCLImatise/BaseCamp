from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Advntr_Filtering_V0_1_0 = CommandToolBuilder(tool="adVNTR_Filtering", base_command=["adVNTR-Filtering"], inputs=[ToolInput(tag="in_min_matches", input_type=Int(optional=True), prefix="--min_matches", doc=InputDocumentation(doc="Minimum number of matches to accept a read")), ToolInput(tag="in_sequences_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_keywords_dot_txt", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dot_txt", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/advntr:1.4.1--py27h76bc9d7_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Advntr_Filtering_V0_1_0().translate("wdl")

