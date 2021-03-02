from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Pathogen_Profiler_Gather_Py_V0_1_0 = CommandToolBuilder(tool="pathogen_profiler_gather.py", base_command=["pathogen-profiler-gather.py"], inputs=[ToolInput(tag="in_samples", input_type=String(optional=True), prefix="--samples", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_dir", input_type=String(optional=True), prefix="--dir", doc=InputDocumentation(doc="NGS Platform (default: pp-results)")), ToolInput(tag="in_matrix", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_fast_a", input_type=String(optional=True), prefix="--fasta", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_summary", input_type=String(optional=True), prefix="--summary", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_it_ol", input_type=Boolean(optional=True), prefix="--itol", doc=InputDocumentation(doc="NGS Platform (default: False)")), ToolInput(tag="in_pct", input_type=Boolean(optional=True), prefix="--pct", doc=InputDocumentation(doc="NGS Platform (default: False)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pathogen_Profiler_Gather_Py_V0_1_0().translate("wdl", allow_empty_container=True)

