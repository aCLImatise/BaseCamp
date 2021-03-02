from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Seqhax_Randseq_V0_1_0 = CommandToolBuilder(tool="seqhax_randseq", base_command=["seqhax", "randseq"], inputs=[ToolInput(tag="in_number_reads_use", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="Number of reads. Use 0 for infinite. [default 1000]")), ToolInput(tag="in_seed_for_rng", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Seed for RNG.")), ToolInput(tag="in_length_of_read", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Length of each read. [default 100]")), ToolInput(tag="in_paired_reads", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Paired reads [default false]")), ToolInput(tag="in_output_fasta_qualities", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Output as fasta (no qualities)")), ToolInput(tag="in_seq_hax", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqhax_Randseq_V0_1_0().translate("wdl", allow_empty_container=True)

