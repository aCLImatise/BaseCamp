from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filter_Low_Expr_Transcripts_Pl_V0_1_0 = CommandToolBuilder(tool="filter_low_expr_transcripts.pl", base_command=["filter_low_expr_transcripts.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/trinity:2.11.0--h5ef6573_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Low_Expr_Transcripts_Pl_V0_1_0().translate("wdl")

