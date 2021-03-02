from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Mmseqs_Profile2Cs_V0_1_0 = CommandToolBuilder(tool="mmseqs_profile2cs", base_command=["mmseqs", "profile2cs"], inputs=[ToolInput(tag="in_pc_a", input_type=Boolean(optional=True), prefix="--pca", doc=InputDocumentation(doc="1.000           pseudo count admixture strength")), ToolInput(tag="in_pcb", input_type=Boolean(optional=True), prefix="--pcb", doc=InputDocumentation(doc="1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)")), ToolInput(tag="in_sub_mat", input_type=File(optional=True), prefix="--sub-mat", doc=InputDocumentation(doc="blosum62.out    amino acid substitution matrix file")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[ToolOutput(tag="out_sub_mat", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sub_mat", type_hint=File()), doc=OutputDocumentation(doc="blosum62.out    amino acid substitution matrix file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Profile2Cs_V0_1_0().translate("wdl", allow_empty_container=True)

