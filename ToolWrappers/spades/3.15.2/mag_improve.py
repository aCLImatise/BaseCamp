from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String, Directory

Mag_Improve_V0_1_0 = CommandToolBuilder(tool="mag_improve", base_command=["mag-improve"], inputs=[ToolInput(tag="in_kmer_length_use", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length to use")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="fasta file with reference sequence (for benchmarking purposes)")), ToolInput(tag="in_threads", input_type=String(optional=True), prefix="--threads", doc=InputDocumentation(doc="# of threads to use")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="scratch directory to use\n"))], outputs=[], container="quay.io/biocontainers/spades:3.15.2--h633aebb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mag_Improve_V0_1_0().translate("wdl")

