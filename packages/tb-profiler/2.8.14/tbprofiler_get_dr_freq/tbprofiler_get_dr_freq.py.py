from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tbprofiler_Get_Dr_Freq_Py_V0_1_0 = CommandToolBuilder(tool="tbprofiler_get_dr_freq.py", base_command=["tbprofiler_get_dr_freq.py"], inputs=[ToolInput(tag="in_meta", input_type=String(optional=True), prefix="--meta", doc=InputDocumentation(doc="")), ToolInput(tag="in_json", input_type=String(), position=0, doc=InputDocumentation(doc="NGS Platform"))], outputs=[], container="quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Get_Dr_Freq_Py_V0_1_0().translate("wdl")

