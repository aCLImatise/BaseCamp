from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Mmseqs_Createtsv_V0_1_0 = CommandToolBuilder(tool="mmseqs_createtsv", base_command=["mmseqs", "createtsv"], inputs=[ToolInput(tag="in_first_seq_as_repr", input_type=Boolean(optional=True), prefix="--first-seq-as-repr", doc=InputDocumentation(doc="Use the first sequence of the clustering result as representative sequence [0]")), ToolInput(tag="in_target_column", input_type=Int(optional=True), prefix="--target-column", doc=InputDocumentation(doc="Select a target column (default 1), 0 if no target id exists [1]")), ToolInput(tag="in_full_header", input_type=Boolean(optional=True), prefix="--full-header", doc=InputDocumentation(doc="Replace DB ID by its corresponding Full Header [0]")), ToolInput(tag="in_idx_seq_src", input_type=Int(optional=True), prefix="--idx-seq-src", doc=InputDocumentation(doc="0: auto, 1: split/translated sequences, 2: input sequences [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]")), ToolInput(tag="in_db_output", input_type=Boolean(optional=True), prefix="--db-output", doc=InputDocumentation(doc="Return a result DB instead of a text file [0]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Createtsv_V0_1_0().translate("wdl")

