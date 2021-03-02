from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float

Tbprofiler_Performance_Py_Calculate_V0_1_0 = CommandToolBuilder(tool="tbprofiler_performance.py_calculate", base_command=["tbprofiler_performance.py", "calculate"], inputs=[ToolInput(tag="in_dir", input_type=String(optional=True), prefix="--dir", doc=InputDocumentation(doc="NGS Platform (default: results/)")), ToolInput(tag="in_miss", input_type=Float(optional=True), prefix="--miss", doc=InputDocumentation(doc="Fraction of gene missing to call gDST as missing\n(default: 0.1)")), ToolInput(tag="in_drugs", input_type=String(optional=True), prefix="--drugs", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_samples", input_type=String(), position=0, doc=InputDocumentation(doc="NGS Platform")), ToolInput(tag="in_dst", input_type=String(), position=1, doc=InputDocumentation(doc="NGS Platform")), ToolInput(tag="in_bed", input_type=String(), position=2, doc=InputDocumentation(doc="NGS Platform"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Performance_Py_Calculate_V0_1_0().translate("wdl", allow_empty_container=True)

