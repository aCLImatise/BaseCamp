from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Kmer_Db_V0_1_0 = CommandToolBuilder(tool="kmer_db", base_command=["kmer-db"], inputs=[ToolInput(tag="in_number_default_number", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="- number of threads (default: number of available cores),")), ToolInput(tag="in_length_kmers_default", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="- length of k-mers (default: 18),")), ToolInput(tag="in_fraction_kmers_accepted", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="- fraction of all k-mers to be accepted by the minhash filter (default: 1),")), ToolInput(tag="in_multisample_fast_a", input_type=Boolean(optional=True), prefix="-multisample-fasta", doc=InputDocumentation(doc="- each sequence in a genome FASTA file is treated as a separate sample.")), ToolInput(tag="in_buffer", input_type=Int(optional=True), prefix="-buffer", doc=InputDocumentation(doc="- size of cache buffer in megabytes, applies to all2all mode\n(use L3 size for Intel CPUs and L2 for AMD to maximize performance; default: 8).")), ToolInput(tag="in_phylip_out", input_type=Boolean(optional=True), prefix="-phylip-out", doc=InputDocumentation(doc="- store output distance matrix in a Phylip format"))], outputs=[], container="quay.io/biocontainers/kmer-db:1.7.6--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmer_Db_V0_1_0().translate("wdl")

