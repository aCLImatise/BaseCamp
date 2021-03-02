from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Fc_Dedup_A_Tigs_V0_1_0 = CommandToolBuilder(tool="fc_dedup_a_tigs", base_command=["fc_dedup_a_tigs"], inputs=[ToolInput(tag="in_max_idt", input_type=Int(optional=True), prefix="--max-idt", doc=InputDocumentation(doc="Keep a-tig if the identity (in %) to the primary contig is <= max_idt (default: 96)")), ToolInput(tag="in_max_aln_cov", input_type=Int(optional=True), prefix="--max-aln-cov", doc=InputDocumentation(doc="Keep a-tig if the alignment coverage (in %) on the a-tig is <= max_aln_cov (default: 97)")), ToolInput(tag="in_min_len_diff", input_type=Int(optional=True), prefix="--min-len-diff", doc=InputDocumentation(doc="Keep a-tig if the length different > min_len_diff (default: 500)")), ToolInput(tag="in_min_seq_len", input_type=Int(optional=True), prefix="--min-seq-len", doc=InputDocumentation(doc="Branches with length less than this threshold will always be deduplicated. (default: 2000)")), ToolInput(tag="in_ploidy", input_type=Int(optional=True), prefix="--ploidy", doc=InputDocumentation(doc="For a diplid genome, 2 branches per SV are expected. This parameter limits the number of pairwise comparison. If <= 0, this threshold is not applied. (default: 2)")), ToolInput(tag="in_a_ctg_all", input_type=String(optional=True), prefix="--a-ctg-all", doc=InputDocumentation(doc="Input set of all associate contigs for deduplication. (default: a_ctg_all.fasta)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Dedup_A_Tigs_V0_1_0().translate("wdl", allow_empty_container=True)

