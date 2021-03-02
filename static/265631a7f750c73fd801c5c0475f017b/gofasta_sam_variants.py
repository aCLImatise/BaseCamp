from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Gofasta_Sam_Variants_V0_1_0 = CommandToolBuilder(tool="gofasta_sam_variants", base_command=["gofasta", "sam", "variants"], inputs=[ToolInput(tag="in_genbank", input_type=String(optional=True), prefix="--genbank", doc=InputDocumentation(doc="Genbank format annotation of a sequence in the same coordinates as the alignment")), ToolInput(tag="in_outfile", input_type=String(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Where to write the variants (default 'stdout')")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference fasta file used to generate the sam file")), ToolInput(tag="in_sam_file", input_type=String(optional=True), prefix="--samfile", doc=InputDocumentation(doc="samfile to read. If none is specified, will read from stdin")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use (default 1)"))], outputs=[], container="quay.io/biocontainers/gofasta:0.0.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gofasta_Sam_Variants_V0_1_0().translate("wdl")

