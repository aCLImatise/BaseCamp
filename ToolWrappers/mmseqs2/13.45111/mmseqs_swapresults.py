from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, File

Mmseqs_Swapresults_V0_1_0 = CommandToolBuilder(tool="mmseqs_swapresults", base_command=["mmseqs", "swapresults"], inputs=[ToolInput(tag="in_split_memory_limit", input_type=Int(optional=True), prefix="--split-memory-limit", doc=InputDocumentation(doc="Set max memory per split. E.g. 800B, 5K, 10M, 1G. Default (0) to all available system memory [0]")), ToolInput(tag="in_list_matches_evalue", input_type=Float(optional=True), prefix="-e", doc=InputDocumentation(doc="List matches below this E-value (range 0.0-inf) [1.000E-03]")), ToolInput(tag="in_gap_open", input_type=Int(optional=True), prefix="--gap-open", doc=InputDocumentation(doc="Gap open cost [nucl:5,aa:11]")), ToolInput(tag="in_gap_extend", input_type=Int(optional=True), prefix="--gap-extend", doc=InputDocumentation(doc="Gap extension cost [nucl:2,aa:1]")), ToolInput(tag="in_sub_mat", input_type=File(optional=True), prefix="--sub-mat", doc=InputDocumentation(doc="Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_db_load_mode", input_type=Int(optional=True), prefix="--db-load-mode", doc=InputDocumentation(doc="Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[ToolOutput(tag="out_sub_mat", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sub_mat", type_hint=File()), doc=OutputDocumentation(doc="Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"))], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Swapresults_V0_1_0().translate("wdl")

