from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, File

Mmseqs_Clusthash_V0_1_0 = CommandToolBuilder(tool="mmseqs_clusthash", base_command=["mmseqs", "clusthash"], inputs=[ToolInput(tag="in_alph_size", input_type=Int(optional=True), prefix="--alph-size", doc=InputDocumentation(doc="Alphabet size (range 2-21) [nucl:5,aa:3]")), ToolInput(tag="in_min_seq_id", input_type=Float(optional=True), prefix="--min-seq-id", doc=InputDocumentation(doc="List matches above this sequence identity (for clustering) (range 0.0-1.0) [0.990]")), ToolInput(tag="in_sub_mat", input_type=File(optional=True), prefix="--sub-mat", doc=InputDocumentation(doc="Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]")), ToolInput(tag="in_max_seq_len", input_type=Int(optional=True), prefix="--max-seq-len", doc=InputDocumentation(doc="Maximum sequence length [65535]")), ToolInput(tag="in_db_load_mode", input_type=Int(optional=True), prefix="--db-load-mode", doc=InputDocumentation(doc="Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[ToolOutput(tag="out_sub_mat", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sub_mat", type_hint=File()), doc=OutputDocumentation(doc="Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"))], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Clusthash_V0_1_0().translate("wdl")

