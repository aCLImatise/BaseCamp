from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Gdtools_Apply_V0_1_0 = CommandToolBuilder(tool="gdtools_APPLY", base_command=["gdtools", "APPLY"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name (DEFAULT=output.*)")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="--format", doc=InputDocumentation(doc="Output file format (Options: FASTA, GFF3) (DEFAULT=FASTA)")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose mode"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name (DEFAULT=output.*)")), ToolOutput(tag="out_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_format", type_hint=File()), doc=OutputDocumentation(doc="Output file format (Options: FASTA, GFF3) (DEFAULT=FASTA)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Apply_V0_1_0().translate("wdl", allow_empty_container=True)

