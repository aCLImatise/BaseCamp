from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, Boolean, String

Rgi_Kmer_Build_V0_1_0 = CommandToolBuilder(tool="rgi_kmer_build", base_command=["rgi", "kmer_build"], inputs=[ToolInput(tag="in_input_directory", input_type=Directory(optional=True), prefix="--input_directory", doc=InputDocumentation(doc="input directory of prevalence data")), ToolInput(tag="in_card", input_type=File(optional=True), prefix="--card", doc=InputDocumentation(doc="fasta file of CARD reference sequences. If missing,\nrun 'rgi card_annotation' to generate.")), ToolInput(tag="in_kmer_size_eg", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer size (e.g., 61)")), ToolInput(tag="in_skip", input_type=Boolean(optional=True), prefix="--skip", doc=InputDocumentation(doc="skips the concatenation and splitting of the CARD*R*V")), ToolInput(tag="in_batch_size", input_type=Int(optional=True), prefix="--batch_size", doc=InputDocumentation(doc="number of kmers to query at a time using pyahocorasick\n--the greater the number the more memory usage\n(default=100,000)\n")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_sequences_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-n THREADS, --threads THREADS"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Kmer_Build_V0_1_0().translate("wdl", allow_empty_container=True)

