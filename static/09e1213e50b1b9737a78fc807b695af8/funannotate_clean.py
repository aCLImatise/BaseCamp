from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Funannotate_Clean_V0_1_0 = CommandToolBuilder(tool="funannotate_clean", base_command=["funannotate", "clean"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Multi-fasta genome file (Required)")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Cleaned multi-fasta output file (Required)")), ToolInput(tag="in_p_ident", input_type=Boolean(optional=True), prefix="--pident", doc=InputDocumentation(doc="Percent identity of overlap. Default = 95")), ToolInput(tag="in_cov", input_type=Boolean(optional=True), prefix="--cov", doc=InputDocumentation(doc="Percent coverage of overlap. Default = 95")), ToolInput(tag="in_min_len", input_type=Boolean(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Minimum length of contig to keep. Default = 500")), ToolInput(tag="in_exhaustive", input_type=Boolean(optional=True), prefix="--exhaustive", doc=InputDocumentation(doc="Test every contig. Default is to stop at N50 value.")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Cleaned multi-fasta output file (Required)"))], container="quay.io/biocontainers/funannotate:1.8.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funannotate_Clean_V0_1_0().translate("wdl")

