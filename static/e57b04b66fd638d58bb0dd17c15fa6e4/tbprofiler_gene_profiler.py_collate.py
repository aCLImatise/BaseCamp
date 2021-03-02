from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File

Tbprofiler_Gene_Profiler_Py_Collate_V0_1_0 = CommandToolBuilder(tool="tbprofiler_gene_profiler.py_collate", base_command=["tbprofiler_gene_profiler.py", "collate"], inputs=[ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="--dir", doc=InputDocumentation(doc="Result directory (default: .)")), ToolInput(tag="in_suffix", input_type=File(optional=True), prefix="--suffix", doc=InputDocumentation(doc="Output file suffix (default: .results.json)"))], outputs=[ToolOutput(tag="out_suffix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_suffix", type_hint=File()), doc=OutputDocumentation(doc="Output file suffix (default: .results.json)"))], container="quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Gene_Profiler_Py_Collate_V0_1_0().translate("wdl")

