from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Tracecomp_V0_1_0 = CommandToolBuilder(tool="tracecomp", base_command=["tracecomp"], inputs=[ToolInput(tag="in_detailed_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": detailed output into file")), ToolInput(tag="in_default_effective_sizes", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="[<every> <until>]. default burnin = 20% of the chain\nmeasure the effective sizes and overlap between 95% CI of several independent chains\n"))], outputs=[ToolOutput(tag="out_detailed_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_detailed_output_file", type_hint=File()), doc=OutputDocumentation(doc=": detailed output into file"))], container="quay.io/biocontainers/phylobayes-mpi:1.8c--h78e549b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tracecomp_V0_1_0().translate("wdl")

