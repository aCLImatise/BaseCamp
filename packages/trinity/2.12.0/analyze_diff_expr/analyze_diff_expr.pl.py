from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Analyze_Diff_Expr_Pl_V0_1_0 = CommandToolBuilder(tool="analyze_diff_expr.pl", base_command=["analyze_diff_expr.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/trinity:2.12.0--h5ef6573_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Analyze_Diff_Expr_Pl_V0_1_0().translate("wdl")

