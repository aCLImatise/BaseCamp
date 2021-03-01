from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Phyluce_Ncbi_Chunk_Fasta_For_Ncbi_V0_1_0 = CommandToolBuilder(tool="phyluce_ncbi_chunk_fasta_for_ncbi", base_command=["phyluce_ncbi_chunk_fasta_for_ncbi"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="The input FASTA"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Ncbi_Chunk_Fasta_For_Ncbi_V0_1_0().translate("wdl", allow_empty_container=True)

