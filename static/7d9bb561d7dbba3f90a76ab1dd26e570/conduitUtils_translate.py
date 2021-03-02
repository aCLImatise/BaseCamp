from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Conduitutils_Translate_V0_1_0 = CommandToolBuilder(tool="conduitUtils_translate", base_command=["conduitUtils", "translate"], inputs=[ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="(default)\nInput file is in FASTA format")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="Input file is in FASTQ format")), ToolInput(tag="in_stranded", input_type=Boolean(optional=True), prefix="--stranded", doc=InputDocumentation(doc="Input reads are forward stranded")), ToolInput(tag="in_min_length", input_type=Boolean(optional=True), prefix="--min-length", doc=InputDocumentation(doc="(75)\nMinimum length in Amino Acids necessary for a putative ORF to be reported\n"))], outputs=[], container="quay.io/biocontainers/conduit-assembler:0.1.2--hbeb723e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Conduitutils_Translate_V0_1_0().translate("wdl")

