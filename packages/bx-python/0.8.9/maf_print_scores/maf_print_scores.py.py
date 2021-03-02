from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Maf_Print_Scores_Py_V0_1_0 = CommandToolBuilder(tool="maf_print_scores.py", base_command=["maf_print_scores.py"], inputs=[ToolInput(tag="in_recalculate", input_type=Boolean(optional=True), prefix="--recalculate", doc=InputDocumentation(doc="don't use the score from the maf, recalculate (using\nhox70 matrix)")), ToolInput(tag="in_l_norm", input_type=Boolean(optional=True), prefix="--lnorm", doc=InputDocumentation(doc="divide (normalize) score by alignment text length"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Print_Scores_Py_V0_1_0().translate("wdl", allow_empty_container=True)

