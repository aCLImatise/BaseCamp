from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bg2Bw_V0_1_0 = CommandToolBuilder(tool="bg2bw", base_command=["bg2bw"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="[file]           Path to the input [b|cr]am file.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="[file]         Path to the output .bw file produced. [default:'output.bw']")), ToolInput(tag="in_chrom_list", input_type=Boolean(optional=True), prefix="--chromList", doc=InputDocumentation(doc="[file]       Path to chrom.list a .tsv where first two columns are contig name and length."))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="[file]         Path to the output .bw file produced. [default:'output.bw']"))], container="quay.io/biocontainers/cgpbigwig:1.5.2--h93d22ca_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bg2Bw_V0_1_0().translate("wdl")

