from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Gofasta_Sam_Indels_V0_1_0 = CommandToolBuilder(tool="gofasta_sam_indels", base_command=["gofasta", "sam", "indels"], inputs=[ToolInput(tag="in_insertions_out", input_type=String(optional=True), prefix="--insertions-out", doc=InputDocumentation(doc="Where to write the insertions (default 'insertions.txt')")), ToolInput(tag="in_deletions_out", input_type=String(optional=True), prefix="--deletions-out", doc=InputDocumentation(doc="Where to write the deletions (default 'deletions.txt')")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Minimum count for an indel to be included in the output (default 2)")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference fasta file used to generate the sam file")), ToolInput(tag="in_sam_file", input_type=String(optional=True), prefix="--samfile", doc=InputDocumentation(doc="samfile to read. If none is specified, will read from stdin")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use (default 1)"))], outputs=[], container="quay.io/biocontainers/gofasta:0.0.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gofasta_Sam_Indels_V0_1_0().translate("wdl")

