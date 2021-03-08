from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, File

Mmseqs_Extractdomains_V0_1_0 = CommandToolBuilder(tool="mmseqs_extractdomains", base_command=["mmseqs", "extractdomains"], inputs=[ToolInput(tag="in_list_matches_evalue", input_type=Float(optional=True), prefix="-e", doc=InputDocumentation(doc="List matches below this E-value (range 0.0-inf) [1.000E-03]")), ToolInput(tag="in_list_matches_fraction", input_type=Float(optional=True), prefix="-c", doc=InputDocumentation(doc="List matches above this fraction of aligned (covered) residues (see --cov-mode) [0.000]")), ToolInput(tag="in_msa_type", input_type=Int(optional=True), prefix="--msa-type", doc=InputDocumentation(doc="MSA Type: 0: cA3M, 1: A3M, 2: FASTA [2]")), ToolInput(tag="in_sub_mat", input_type=File(optional=True), prefix="--sub-mat", doc=InputDocumentation(doc="Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[ToolOutput(tag="out_sub_mat", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sub_mat", type_hint=File()), doc=OutputDocumentation(doc="Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"))], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Extractdomains_V0_1_0().translate("wdl")

