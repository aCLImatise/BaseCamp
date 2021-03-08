from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Maf_Print_Scores_Py_V0_1_0 = CommandToolBuilder(tool="maf_print_scores.py", base_command=["maf_print_scores.py"], inputs=[ToolInput(tag="in_recalculate", input_type=Boolean(optional=True), prefix="--recalculate", doc=InputDocumentation(doc="don't use the score from the maf, recalculate (using\nhox70 matrix)")), ToolInput(tag="in_l_norm", input_type=Boolean(optional=True), prefix="--lnorm", doc=InputDocumentation(doc="divide (normalize) score by alignment text length"))], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Print_Scores_Py_V0_1_0().translate("wdl")

