from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Alignmenttools_Align_Nucl_To_Prot_V0_1_0 = CommandToolBuilder(tool="AlignmentTools_align_nucl_to_prot", base_command=["AlignmentTools", "align-nucl-to-prot"], inputs=[ToolInput(tag="in_align_nucleotide_to_protein", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_aligned_prot_seqs", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_unaligned_nucl_seqs", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_aligned_nucl_out", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_stats_out", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alignmenttools_Align_Nucl_To_Prot_V0_1_0().translate("wdl", allow_empty_container=True)

