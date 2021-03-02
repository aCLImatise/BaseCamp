from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Fasta_Dinucleotide_Shuffle_V0_1_0 = CommandToolBuilder(tool="fasta_dinucleotide_shuffle", base_command=["fasta-dinucleotide-shuffle"], inputs=[ToolInput(tag="in_file_name_required", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="file name (required)")), ToolInput(tag="in_added_shuffled_sequence", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="added to shuffled sequence names")), ToolInput(tag="in_random_seed_default", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="random seed; default: 1")), ToolInput(tag="in_make_shuffled_copies", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="make <n> shuffled copies of each sequence; default: 1")), ToolInput(tag="in_alphabet_file_use", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="alphabet file to use non-DNA alphabets"))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Dinucleotide_Shuffle_V0_1_0().translate("wdl")

