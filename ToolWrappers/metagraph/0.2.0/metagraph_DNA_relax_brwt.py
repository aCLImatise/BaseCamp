from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Metagraph_Dna_Relax_Brwt_V0_1_0 = CommandToolBuilder(tool="metagraph_DNA_relax_brwt", base_command=["metagraph_DNA", "relax_brwt"], inputs=[ToolInput(tag="in_outfile_base", input_type=File(optional=True), prefix="--outfile-base", doc=InputDocumentation(doc="[STR] basename of output file []")), ToolInput(tag="in_relax_arity", input_type=Boolean(optional=True), prefix="--relax-arity", doc=InputDocumentation(doc="[INT]  relax brwt tree to optimize arity limited to this number [10]")), ToolInput(tag="in_parallel", input_type=Boolean(optional=True), prefix="--parallel", doc=InputDocumentation(doc="[INT]     use multiple threads for computation [1]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="switch on verbose output [off]")), ToolInput(tag="in_annotator", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outfile_base", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile_base", type_hint=File()), doc=OutputDocumentation(doc="[STR] basename of output file []"))], container="quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagraph_Dna_Relax_Brwt_V0_1_0().translate("wdl")

