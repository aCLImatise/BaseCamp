from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gofasta_Snps_V0_1_0 = CommandToolBuilder(tool="gofasta_snps", base_command=["gofasta", "snps"], inputs=[ToolInput(tag="in_outfile", input_type=String(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output to write (default 'stdout')")), ToolInput(tag="in_query", input_type=String(optional=True), prefix="--query", doc=InputDocumentation(doc="Alignment of sequences to find snps in, in fasta format (default 'stdin')")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference sequence, in fasta format"))], outputs=[], container="quay.io/biocontainers/gofasta:0.0.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gofasta_Snps_V0_1_0().translate("wdl")

