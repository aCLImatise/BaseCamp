from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Irep_Filter_Py_V0_1_0 = CommandToolBuilder(tool="iRep_filter.py", base_command=["iRep_filter.py"], inputs=[ToolInput(tag="in__irep_tables", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[T [T ...]]  iRep table(s)")), ToolInput(tag="in_min_coverage_default", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="min. coverage (default = 5)")), ToolInput(tag="in_min_percent_windows", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="min. percent windows passing filter (default = 98)")), ToolInput(tag="in_min_r_value", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="min. r^2 value for fitting (default = 0.90)")), ToolInput(tag="in_max_fragmentsmbp_default", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="max. fragments/Mbp (default = 175)")), ToolInput(tag="in_max_gc_bias", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="max. GC bias (default = no filter)")), ToolInput(tag="in_long", input_type=Boolean(optional=True), prefix="--long", doc=InputDocumentation(doc="print in long format")), ToolInput(tag="in_var_7", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Irep_Filter_Py_V0_1_0().translate("wdl", allow_empty_container=True)

