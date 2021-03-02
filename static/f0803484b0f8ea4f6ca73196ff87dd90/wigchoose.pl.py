from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Wigchoose_Pl_V0_1_0 = CommandToolBuilder(tool="wigchoose.pl", base_command=["wigchoose.pl"], inputs=[ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--mincov", doc=InputDocumentation(doc="minimal coverage for each position of the interval (default: 1)")), ToolInput(tag="in_min_re_lcov", input_type=Int(optional=True), prefix="--minrelcov", doc=InputDocumentation(doc="minimal relative coverage (0 <= f <= 1, default: 0)")), ToolInput(tag="in_max_gap", input_type=Int(optional=True), prefix="--maxgap", doc=InputDocumentation(doc="coverage gaps of maximal this length each are allowed (default: 0)")), ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_do_twig", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wigchoose_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

