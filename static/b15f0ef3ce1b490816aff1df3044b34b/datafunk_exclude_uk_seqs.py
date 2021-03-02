from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Datafunk_Exclude_Uk_Seqs_V0_1_0 = CommandToolBuilder(tool="datafunk_exclude_uk_seqs", base_command=["datafunk", "exclude_uk_seqs"], inputs=[ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="Fasta file to read")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="Fasta file to write\n"))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Exclude_Uk_Seqs_V0_1_0().translate("wdl")

