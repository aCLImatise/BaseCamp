from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ffindex_From_Fasta_V0_1_0 = CommandToolBuilder(tool="ffindex_from_fasta", base_command=["ffindex_from_fasta"], inputs=[ToolInput(tag="in_sort_index_file", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="sort index file")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ffindex_From_Fasta_V0_1_0().translate("wdl")

