from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Fastq_Kmers_V0_1_0 = CommandToolBuilder(tool="fastq_kmers", base_command=["fastq-kmers"], inputs=[ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="kmer size (default: 1)"))], outputs=[], container="quay.io/biocontainers/fastq-tools:0.8.3--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Kmers_V0_1_0().translate("wdl")

