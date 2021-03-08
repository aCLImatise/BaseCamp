from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Mmseqs_Splitsequence_V0_1_0 = CommandToolBuilder(tool="mmseqs_splitsequence", base_command=["mmseqs", "splitsequence"], inputs=[ToolInput(tag="in_sequence_overlap", input_type=Int(optional=True), prefix="--sequence-overlap", doc=InputDocumentation(doc="Overlap between sequences [300]")), ToolInput(tag="in_sequence_split_mode", input_type=Int(optional=True), prefix="--sequence-split-mode", doc=InputDocumentation(doc="Sequence split mode 0: copy data, 1: soft link data and write new index, [1]")), ToolInput(tag="in_headers_split_mode", input_type=Int(optional=True), prefix="--headers-split-mode", doc=InputDocumentation(doc="Header split mode: 0: split position, 1: original header [0]")), ToolInput(tag="in_max_seq_len", input_type=Int(optional=True), prefix="--max-seq-len", doc=InputDocumentation(doc="Maximum sequence length [10000]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]")), ToolInput(tag="in_create_lookup", input_type=Int(optional=True), prefix="--create-lookup", doc=InputDocumentation(doc="Create database lookup file (can be very large) [0]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Splitsequence_V0_1_0().translate("wdl")

