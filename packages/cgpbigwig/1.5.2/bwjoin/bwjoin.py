from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bwjoin_V0_1_0 = CommandToolBuilder(tool="bwjoin", base_command=["bwjoin"], inputs=[ToolInput(tag="in_input_path", input_type=Boolean(optional=True), prefix="--input-path", doc=InputDocumentation(doc="[dir]                           Path to the input bigwig files named [path]/<contig_name>.bw")), ToolInput(tag="in_fast_a_index", input_type=Boolean(optional=True), prefix="--fasta-index", doc=InputDocumentation(doc="[file]                         Fasta index file (.fai)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="[file]                             Path to the output .bw file produced. [default:'concatenated.bw']")), ToolInput(tag="in_ignore_contigs", input_type=Boolean(optional=True), prefix="--ignore-contigs", doc=InputDocumentation(doc="[comma separated list]      Comma separated list of contigs to ignore."))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="[file]                             Path to the output .bw file produced. [default:'concatenated.bw']"))], container="quay.io/biocontainers/cgpbigwig:1.5.2--h93d22ca_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwjoin_V0_1_0().translate("wdl")

