from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Basenji_Bench_Gtex_Cmp_Py_V0_1_0 = CommandToolBuilder(tool="basenji_bench_gtex_cmp.py", base_command=["basenji_bench_gtex_cmp.py"], inputs=[ToolInput(tag="in_alt", input_type=String(optional=True), prefix="--alt", doc=InputDocumentation(doc="Statistical test alternative [Default: two-sided]")), ToolInput(tag="in_hue", input_type=Boolean(optional=True), prefix="--hue", doc=InputDocumentation(doc="Scatter plot variant number as hue [Default: False]")), ToolInput(tag="in_stats", input_type=Int(optional=True), prefix="--stats", doc=InputDocumentation(doc="Minimum variants to include tissue [Default: 0]")), ToolInput(tag="in_bench_two_dir", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Bench_Gtex_Cmp_Py_V0_1_0().translate("wdl")

