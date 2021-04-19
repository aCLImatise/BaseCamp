from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Metagraph_Coordinate_V0_1_0 = CommandToolBuilder(tool="metagraph_coordinate", base_command=["metagraph", "coordinate"], inputs=[ToolInput(tag="in_fwd_and_reverse", input_type=Boolean(optional=True), prefix="--fwd-and-reverse", doc=InputDocumentation(doc="process both forward and reverse complement sequences [off]")), ToolInput(tag="in_annotator", input_type=Boolean(optional=True), prefix="--annotator", doc=InputDocumentation(doc="[STR]            annotator to update []")), ToolInput(tag="in_outfile_base", input_type=File(optional=True), prefix="--outfile-base", doc=InputDocumentation(doc="[STR]         basename of output file [<GRAPH>]")), ToolInput(tag="in_coord_binsize", input_type=Boolean(optional=True), prefix="--coord-binsize", doc=InputDocumentation(doc="[INT]        stepsize for k-mer coordinates in input sequences from the fasta files [1000]")), ToolInput(tag="in_fast", input_type=Boolean(optional=True), prefix="--fast", doc=InputDocumentation(doc="annotate in fast regime [off]")), ToolInput(tag="in_parallel", input_type=Boolean(optional=True), prefix="--parallel", doc=InputDocumentation(doc="[INT]             use multiple threads for computation [1]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="switch on verbose output [off]")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_one", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outfile_base", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile_base", type_hint=File()), doc=OutputDocumentation(doc="[STR]         basename of output file [<GRAPH>]"))], container="quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagraph_Coordinate_V0_1_0().translate("wdl")

