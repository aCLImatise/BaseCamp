from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Tbprofiler_Summarise_Mutations_Py_V0_1_0 = CommandToolBuilder(tool="tbprofiler_summarise_mutations.py", base_command=["tbprofiler_summarise_mutations.py"], inputs=[ToolInput(tag="in_dir", input_type=String(optional=True), prefix="--dir", doc=InputDocumentation(doc="NGS Platform (default: results)")), ToolInput(tag="in_summary", input_type=String(optional=True), prefix="--summary", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_pct", input_type=Boolean(optional=True), prefix="--pct", doc=InputDocumentation(doc="NGS Platform (default: False)")), ToolInput(tag="in_columns", input_type=String(optional=True), prefix="--columns", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_non_dr", input_type=Boolean(optional=True), prefix="--non-dr", doc=InputDocumentation(doc="NGS Platform (default: False)"))], outputs=[], container="quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Summarise_Mutations_Py_V0_1_0().translate("wdl")

