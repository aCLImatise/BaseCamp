from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Sga_Rewrite_Evidence_Bam_V0_1_0 = CommandToolBuilder(tool="sga_rewrite_evidence_bam", base_command=["sga", "rewrite-evidence-bam"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_fast_q", input_type=File(optional=True), prefix="--fastq", doc=InputDocumentation(doc="parse the read names and sequences from the fastq file in F (required)")), ToolInput(tag="in_merge_bam", input_type=File(optional=True), prefix="--merge-bam", doc=InputDocumentation(doc="merge the evidence BAM alignments with the alignments in F")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="write the new BAM file to F"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Rewrite_Evidence_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

