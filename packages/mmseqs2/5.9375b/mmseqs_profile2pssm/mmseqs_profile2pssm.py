from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Mmseqs_Profile2Pssm_V0_1_0 = CommandToolBuilder(tool="mmseqs_profile2pssm", base_command=["mmseqs", "profile2pssm"], inputs=[ToolInput(tag="in_comp_bias_corr", input_type=Boolean(optional=True), prefix="--comp-bias-corr", doc=InputDocumentation(doc="1               correct for locally biased amino acid composition [0,1]")), ToolInput(tag="in_db_output", input_type=File(optional=True), prefix="--db-output", doc=InputDocumentation(doc="false           Output a result db instead of a text file")), ToolInput(tag="in_sub_mat", input_type=File(optional=True), prefix="--sub-mat", doc=InputDocumentation(doc="blosum62.out    amino acid substitution matrix file")), ToolInput(tag="in_max_seq_len", input_type=Boolean(optional=True), prefix="--max-seq-len", doc=InputDocumentation(doc="65535           Maximum sequence length [1,32768]")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[ToolOutput(tag="out_db_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_db_output", type_hint=File()), doc=OutputDocumentation(doc="false           Output a result db instead of a text file")), ToolOutput(tag="out_sub_mat", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sub_mat", type_hint=File()), doc=OutputDocumentation(doc="blosum62.out    amino acid substitution matrix file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Profile2Pssm_V0_1_0().translate("wdl", allow_empty_container=True)

