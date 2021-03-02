from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tbprofiler_Library_Summary_Py_Mutations_V0_1_0 = CommandToolBuilder(tool="tbprofiler_library_summary.py_mutations", base_command=["tbprofiler_library_summary.py", "mutations"], inputs=[ToolInput(tag="in_drugs", input_type=String(optional=True), prefix="--drugs", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_ngs", input_type=String(optional=True), prefix="--ngs", doc=InputDocumentation(doc="NGS Platform (default: None)"))], outputs=[], container="quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Library_Summary_Py_Mutations_V0_1_0().translate("wdl")

