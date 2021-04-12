from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cobs_Print_Kmers_V0_1_0 = CommandToolBuilder(tool="cobs_print_kmers", base_command=["cobs", "print-kmers"], inputs=[ToolInput(tag="in_km_er_size", input_type=Boolean(optional=True), prefix="--kmer-size", doc=InputDocumentation(doc="the size of one kmer, default: 31")), ToolInput(tag="in_query", input_type=String(), position=0, doc=InputDocumentation(doc="the dna sequence to search for"))], outputs=[], container="quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cobs_Print_Kmers_V0_1_0().translate("wdl")

