from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Rbt_Collapse_Reads_To_Fragments_Bam_V0_1_0 = CommandToolBuilder(tool="rbt_collapse_reads_to_fragments_bam", base_command=["rbt", "collapse-reads-to-fragments", "bam"], inputs=[ToolInput(tag="in_verbose_read_names", input_type=Boolean(optional=True), prefix="--verbose-read-names", doc=InputDocumentation(doc="Add list of reads that were merged for each consensus read. Note that this can yield very long FASTQ name\nlines which cannot be handled by some tools.")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_consensus_fq_one", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_consensus_fq_two", input_type=Int(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_consensus_fq_se", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/rust-bio-tools:0.20.1--heda7bfa_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Collapse_Reads_To_Fragments_Bam_V0_1_0().translate("wdl")

