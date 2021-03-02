from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Gdtools_Apply_V0_1_0 = CommandToolBuilder(tool="gdtools_APPLY", base_command=["gdtools", "APPLY"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name (DEFAULT=output.*)")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="--format", doc=InputDocumentation(doc="Output file format (Options: FASTA, GENBANK, GFF3) (DEFAULT=FASTA)")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)")), ToolInput(tag="in_seq_id", input_type=String(optional=True), prefix="--seq-id", doc=InputDocumentation(doc="Sequence ID to keep in output. If this argument is provided, other sequences are deleted after the APPLY. May be provided multiple times.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose mode"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name (DEFAULT=output.*)")), ToolOutput(tag="out_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_format", type_hint=File()), doc=OutputDocumentation(doc="Output file format (Options: FASTA, GENBANK, GFF3) (DEFAULT=FASTA)"))], container="quay.io/biocontainers/breseq:0.35.5--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Apply_V0_1_0().translate("wdl")

