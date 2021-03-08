from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, File, Int

Mmseqs_Profile2Cs_V0_1_0 = CommandToolBuilder(tool="mmseqs_profile2cs", base_command=["mmseqs", "profile2cs"], inputs=[ToolInput(tag="in_pc_a", input_type=Float(optional=True), prefix="--pca", doc=InputDocumentation(doc="Pseudo count admixture strength [1.000]")), ToolInput(tag="in_pcb", input_type=Float(optional=True), prefix="--pcb", doc=InputDocumentation(doc="Pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]")), ToolInput(tag="in_sub_mat", input_type=File(optional=True), prefix="--sub-mat", doc=InputDocumentation(doc="Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[ToolOutput(tag="out_sub_mat", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sub_mat", type_hint=File()), doc=OutputDocumentation(doc="Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"))], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Profile2Cs_V0_1_0().translate("wdl")

