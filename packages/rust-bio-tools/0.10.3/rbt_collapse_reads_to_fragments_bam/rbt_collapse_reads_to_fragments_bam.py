from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Rbt_Collapse_Reads_To_Fragments_Bam_V0_1_0 = CommandToolBuilder(tool="rbt_collapse_reads_to_fragments_bam", base_command=["rbt", "collapse-reads-to-fragments", "bam"], inputs=[ToolInput(tag="in_verbose_read_names", input_type=Boolean(optional=True), prefix="--verbose-read-names", doc=InputDocumentation(doc="Add list of reads that were merged for each consensus read. Note that this can yield\nvery long FASTQ name lines which cannot be handled by some tools.")), ToolInput(tag="in_max_seq_dist", input_type=Int(optional=True), prefix="--max-seq-dist", doc=InputDocumentation(doc="Maximum hamming distance between the sequences of any pair of reads in the same\ncluster. [default: 2]  [possible values: 1, 2, 3, 4, 5, 6, 7, 8]")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Collapse_Reads_To_Fragments_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

