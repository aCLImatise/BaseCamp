from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Bpcomp_V0_1_0 = CommandToolBuilder(tool="bpcomp", base_command=["bpcomp"], inputs=[ToolInput(tag="in_only_partitions_max", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc=": only partitions with max prob >  cutoff. (default 0.5)")), ToolInput(tag="in_detailed_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": detailed output into file")), ToolInput(tag="in_ps", input_type=Boolean(optional=True), prefix="-ps", doc=InputDocumentation(doc=": postscript output (requires LateX)")), ToolInput(tag="in_default_build_consensus", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="[<every> <until>]. default burnin = 1/10 of the chain\ncompare bipartition frequencies between independent chains\nand build consensus based on merged lists of trees\n"))], outputs=[ToolOutput(tag="out_detailed_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_detailed_output_file", type_hint=File()), doc=OutputDocumentation(doc=": detailed output into file"))], container="quay.io/biocontainers/phylobayes-mpi:1.8c--h78e549b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bpcomp_V0_1_0().translate("wdl")

