from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Tbprofiler_Get_Mutation_Py_V0_1_0 = CommandToolBuilder(tool="tbprofiler_get_mutation.py", base_command=["tbprofiler_get_mutation.py"], inputs=[ToolInput(tag="in_sample_file", input_type=File(optional=True), prefix="--sample_file", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_dir", input_type=String(optional=True), prefix="--dir", doc=InputDocumentation(doc="NGS Platform (default: results/)")), ToolInput(tag="in_lineage", input_type=String(optional=True), prefix="--lineage", doc=InputDocumentation(doc="NGS Platform (default: None)")), ToolInput(tag="in_gene", input_type=String(), position=0, doc=InputDocumentation(doc="NGS Platform")), ToolInput(tag="in_mutation", input_type=String(), position=1, doc=InputDocumentation(doc="NGS Platform"))], outputs=[], container="quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbprofiler_Get_Mutation_Py_V0_1_0().translate("wdl")

