from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Abyss_Align_V0_1_0 = CommandToolBuilder(tool="abyss_align", base_command=["abyss-align"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_di_align_d", input_type=Int(optional=True), prefix="--dialign-d", doc=InputDocumentation(doc="dialign debug level, default: 0")), ToolInput(tag="in_di_align_m", input_type=File(optional=True), prefix="--dialign-m", doc=InputDocumentation(doc="score matrix, default: dna_matrix.scr")), ToolInput(tag="in_di_align_p", input_type=File(optional=True), prefix="--dialign-p", doc=InputDocumentation(doc="diagonal length probability distribution\ndefault: dna_diag_prob_100_exp_550000")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="sequences in FASTA format"))], outputs=[], container="quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Align_V0_1_0().translate("wdl")

