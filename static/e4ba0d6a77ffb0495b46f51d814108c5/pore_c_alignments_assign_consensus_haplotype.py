from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String

Pore_C_Alignments_Assign_Consensus_Haplotype_V0_1_0 = CommandToolBuilder(tool="pore_c_alignments_assign_consensus_haplotype", base_command=["pore_c", "alignments", "assign-consensus-haplotype"], inputs=[ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="major:minor haplotype fraction must be greater than this\nvalue to assign a consensus  [default: 0.8]")), ToolInput(tag="in_output_pore_c_table", input_type=String(), position=0, doc=InputDocumentation(doc="Calculate a per-read consensus haplotype for each phase_set in ALIGN_TABLE"))], outputs=[], container="quay.io/biocontainers/pore-c:0.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pore_C_Alignments_Assign_Consensus_Haplotype_V0_1_0().translate("wdl")

