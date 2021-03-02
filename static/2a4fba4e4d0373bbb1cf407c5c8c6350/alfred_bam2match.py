from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Alfred_Bam2Match_V0_1_0 = CommandToolBuilder(tool="alfred_bam2match", base_command=["alfred", "bam2match"], inputs=[ToolInput(tag="in_arg_min_mapping", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --map-qual ] arg (=0)          min. mapping quality")), ToolInput(tag="in_arg_reference_fasta", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --reference ] arg              reference fasta file")), ToolInput(tag="in_arg_gzipped_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg (='match.gz')  gzipped output file")), ToolInput(tag="in_contig_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_gzipped_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_gzipped_file", type_hint=File()), doc=OutputDocumentation(doc="[ --outfile ] arg (='match.gz')  gzipped output file"))], container="quay.io/biocontainers/alfred:0.2.3--hf3ca161_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alfred_Bam2Match_V0_1_0().translate("wdl")

