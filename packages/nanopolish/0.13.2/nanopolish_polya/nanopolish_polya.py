from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Nanopolish_Polya_V0_1_0 = CommandToolBuilder(tool="nanopolish_polya", base_command=["nanopolish", "polya"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_window", input_type=String(optional=True), prefix="--window", doc=InputDocumentation(doc="only compute the poly-A lengths for reads in window STR (format: ctg:start_id-end_id)")), ToolInput(tag="in_reads", input_type=File(optional=True), prefix="--reads", doc=InputDocumentation(doc="the 1D ONT direct RNA reads are in fasta FILE")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="the reads aligned to the genome assembly are in bam FILE")), ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="the reference genome assembly for the reads is in FILE")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use NUM threads (default: 1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanopolish_Polya_V0_1_0().translate("wdl", allow_empty_container=True)

