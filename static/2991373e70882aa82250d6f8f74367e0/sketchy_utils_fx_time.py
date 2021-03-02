from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Sketchy_Utils_Fx_Time_V0_1_0 = CommandToolBuilder(tool="sketchy_utils_fx_time", base_command=["sketchy", "utils", "fx-time"], inputs=[ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="--fastq", doc=InputDocumentation(doc="Path to Fast{a,q} input file used in evaluation NOTE:\nThis argument is mutually exclusive with  arguments:\n[index].  [required]")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Path to input file read index from `sketchy utils fx-\nsort` NOTE: This argument is mutually exclusive with\narguments: [fastx].")), ToolInput(tag="in_evaluation", input_type=File(optional=True), prefix="--evaluation", doc=InputDocumentation(doc="Path to evaluation file containing predictions\n(data.tsv)")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Output prefix for time data: {prefix}.time.tsv\n[skecthy]")), ToolInput(tag="in_delta", input_type=Int(optional=True), prefix="--delta", doc=InputDocumentation(doc="Compute time delta between 'first' read or start time\nof run !! GMT !! in format: '20/11/20 16:20:00'\n[first]"))], outputs=[], container="quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Utils_Fx_Time_V0_1_0().translate("wdl")

