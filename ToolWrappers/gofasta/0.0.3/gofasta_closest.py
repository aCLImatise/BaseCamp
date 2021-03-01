from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Gofasta_Closest_V0_1_0 = CommandToolBuilder(tool="gofasta_closest", base_command=["gofasta", "closest"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="The output file to write (default 'snps.csv')")), ToolInput(tag="in_query", input_type=String(optional=True), prefix="--query", doc=InputDocumentation(doc="Alignment of sequences to find matches for, in fasta format")), ToolInput(tag="in_target", input_type=String(optional=True), prefix="--target", doc=InputDocumentation(doc="Alignment of sequences to search for matches in, in fasta format")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use (default 1)"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="The output file to write (default 'snps.csv')"))], container="quay.io/biocontainers/gofasta:0.0.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gofasta_Closest_V0_1_0().translate("wdl")

