from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Mmseqs_Convertprofiledb_V0_1_0 = CommandToolBuilder(tool="mmseqs_convertprofiledb", base_command=["mmseqs", "convertprofiledb"], inputs=[ToolInput(tag="in_profile_type", input_type=Boolean(optional=True), prefix="--profile-type", doc=InputDocumentation(doc="0               0: HMM (HHsuite) 1: PSSM or 2: HMMER3")), ToolInput(tag="in_sub_mat", input_type=File(optional=True), prefix="--sub-mat", doc=InputDocumentation(doc="blosum62.out    amino acid substitution matrix file")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[ToolOutput(tag="out_sub_mat", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sub_mat", type_hint=File()), doc=OutputDocumentation(doc="blosum62.out    amino acid substitution matrix file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Convertprofiledb_V0_1_0().translate("wdl", allow_empty_container=True)

