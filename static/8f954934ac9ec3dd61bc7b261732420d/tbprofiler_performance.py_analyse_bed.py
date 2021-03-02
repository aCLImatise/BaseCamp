from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Tbprofiler_Performance_Py_Analyse_Bed_V0_1_0 = CommandToolBuilder(tool="tbprofiler_performance.py_analyse_bed", base_command=["tbprofiler_performance.py", "analyse", "bed"], inputs=[ToolInput(tag="in_it_ol", input_type=Boolean(optional=True), prefix="--itol", doc=InputDocumentation(doc="")), ToolInput(tag="in_dir", input_type=String(optional=True), prefix="--dir", doc=InputDocumentation(doc="")), ToolInput(tag="in_tb_profiler_performance_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_analyse", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_drug", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Performance_Py_Analyse_Bed_V0_1_0().translate("wdl", allow_empty_container=True)

