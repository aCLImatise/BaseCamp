from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Sqt_Align_V0_1_0 = CommandToolBuilder(tool="sqt_align", base_command=["sqt", "align"], inputs=[ToolInput(tag="in_semi_global", input_type=Boolean(optional=True), prefix="--semiglobal", doc=InputDocumentation(doc="Run a semi-global alignment (for detecting overlaps).\nDefault: global alignment.")), ToolInput(tag="in_max_error_rate", input_type=Int(optional=True), prefix="--max-error-rate", doc=InputDocumentation(doc="Switch to cutadapt algorithm (also enables\n--semiglobal). No alignment will be printed.")), ToolInput(tag="in_reverse_complement", input_type=Boolean(optional=True), prefix="--reverse-complement", doc=InputDocumentation(doc="Run the alignment also with the reverse-complement of\nthe second sequence")), ToolInput(tag="in_merge", input_type=Boolean(optional=True), prefix="--merge", doc=InputDocumentation(doc="Output a merged sequence (also enables --semiglobal)")), ToolInput(tag="in_sequence_one", input_type=Int(), position=0, doc=InputDocumentation(doc="Sequence or path to FASTA file. If FASTA, only the\nfirst sequence is used.")), ToolInput(tag="in_sequence_two", input_type=Int(), position=1, doc=InputDocumentation(doc="Sequence or path to FASTA file. If FASTA, only the\nfirst sequence is used."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sqt_Align_V0_1_0().translate("wdl", allow_empty_container=True)

