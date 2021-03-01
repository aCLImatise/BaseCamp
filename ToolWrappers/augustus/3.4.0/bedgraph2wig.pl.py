from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bedgraph2Wig_Pl_V0_1_0 = CommandToolBuilder(tool="bedgraph2wig.pl", base_command=["bedgraph2wig.pl"], inputs=[ToolInput(tag="in_bed_graph_file", input_type=Boolean(optional=True), prefix="--bedgraphfile", doc=InputDocumentation(doc=": The path to the bedgraphffile")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--outputfile", doc=InputDocumentation(doc=": The file where the output should be saved. If not supplied, the output is printed to STDOUT")), ToolInput(tag="in_span", input_type=Boolean(optional=True), prefix="--span", doc=InputDocumentation(doc=": Use span notation (see http://genome.ucsc.edu/goldenPath/help/wiggle.html")), ToolInput(tag="in_output", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_is", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc=": The file where the output should be saved. If not supplied, the output is printed to STDOUT"))], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedgraph2Wig_Pl_V0_1_0().translate("wdl")

