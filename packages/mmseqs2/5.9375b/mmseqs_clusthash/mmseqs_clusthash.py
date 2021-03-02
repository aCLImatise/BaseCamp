from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Mmseqs_Clusthash_V0_1_0 = CommandToolBuilder(tool="mmseqs_clusthash", base_command=["mmseqs", "clusthash"], inputs=[ToolInput(tag="in_alph_size", input_type=Boolean(optional=True), prefix="--alph-size", doc=InputDocumentation(doc="3               alphabet size [2,21]")), ToolInput(tag="in_min_seq_id", input_type=Boolean(optional=True), prefix="--min-seq-id", doc=InputDocumentation(doc="0.000           list matches above this sequence identity (for clustering) [0.0,1.0]")), ToolInput(tag="in_sub_mat", input_type=File(optional=True), prefix="--sub-mat", doc=InputDocumentation(doc="blosum62.out    amino acid substitution matrix file")), ToolInput(tag="in_max_seq_len", input_type=Int(optional=True), prefix="--max-seq-len", doc=InputDocumentation(doc="Maximum sequence length [1,32768]")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[ToolOutput(tag="out_sub_mat", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sub_mat", type_hint=File()), doc=OutputDocumentation(doc="blosum62.out    amino acid substitution matrix file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Clusthash_V0_1_0().translate("wdl", allow_empty_container=True)

