from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Motif2Logo_Pl_V0_1_0 = CommandToolBuilder(tool="motif2Logo.pl", base_command=["motif2Logo.pl"], inputs=[ToolInput(tag="in_pdf", input_type=Boolean(optional=True), prefix="-pdf", doc=InputDocumentation(doc="(create a pdf: 'motif file'.pdf: default creates a PNG image)")), ToolInput(tag="in_ns", input_type=Boolean(optional=True), prefix="-ns", doc=InputDocumentation(doc="<#> (Number of sequences to feed seqlogo: default 100)")), ToolInput(tag="in_bit", input_type=Boolean(optional=True), prefix="-bit", doc=InputDocumentation(doc="(scale logo by information content: default scales nucleotides to probability)")), ToolInput(tag="in_prefix_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="(prefix of output file, i.e. outputprefix.png : default, motif file)")), ToolInput(tag="in_motif_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_prefix_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix_output_file", type_hint=File()), doc=OutputDocumentation(doc="(prefix of output file, i.e. outputprefix.png : default, motif file)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motif2Logo_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

