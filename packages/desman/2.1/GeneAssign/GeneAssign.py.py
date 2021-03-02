from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Geneassign_Py_V0_1_0 = CommandToolBuilder(tool="GeneAssign.py", base_command=["GeneAssign.py"], inputs=[ToolInput(tag="in_random_seed", input_type=Int(optional=True), prefix="--random_seed", doc=InputDocumentation(doc="specifies seed for numpy random number generator\ndefaults to 23724839 applied after random filtering")), ToolInput(tag="in_eta_max", input_type=Int(optional=True), prefix="--eta_max", doc=InputDocumentation(doc="maximum contig contig count for sampler defaults to 2")), ToolInput(tag="in_iter_max", input_type=Int(optional=True), prefix="--iter_max", doc=InputDocumentation(doc="number of Gibbs sampling iterations")), ToolInput(tag="in_var_max", input_type=Int(optional=True), prefix="--var_max", doc=InputDocumentation(doc="maximum number of variants to user per contig defaults\nto all (1e10) if unset")), ToolInput(tag="in_output_stub", input_type=File(optional=True), prefix="--output_stub", doc=InputDocumentation(doc="string specifying output file stubs")), ToolInput(tag="in_genomes", input_type=File(optional=True), prefix="--genomes", doc=InputDocumentation(doc="specify validation file of known genome composition")), ToolInput(tag="in_variant_file", input_type=File(optional=True), prefix="--variant_file", doc=InputDocumentation(doc="specify file of called variants on genes if available")), ToolInput(tag="in_scg_cov_file", input_type=String(), position=0, doc=InputDocumentation(doc="input core gene coverages")), ToolInput(tag="in_gamma_star_file", input_type=String(), position=1, doc=InputDocumentation(doc="input MAP estimate frequencies")), ToolInput(tag="in_cov_file", input_type=String(), position=2, doc=InputDocumentation(doc="mean contig/genes coverages")), ToolInput(tag="in_epsilon_file", input_type=String(), position=3, doc=InputDocumentation(doc="predicted transition matrix"))], outputs=[ToolOutput(tag="out_output_stub", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_stub", type_hint=File()), doc=OutputDocumentation(doc="string specifying output file stubs"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Geneassign_Py_V0_1_0().translate("wdl", allow_empty_container=True)

