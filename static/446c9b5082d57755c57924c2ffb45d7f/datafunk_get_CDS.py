from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Datafunk_Get_Cds_V0_1_0 = CommandToolBuilder(tool="datafunk_get_CDS", base_command=["datafunk", "get_CDS"], inputs=[ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="Fasta file to read")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="Fasta file to write. Prints to stdout if not specified")), ToolInput(tag="in_translate", input_type=Boolean(optional=True), prefix="--translate", doc=InputDocumentation(doc="output amino acid sequence (default is nucleotides)"))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Get_Cds_V0_1_0().translate("wdl")

