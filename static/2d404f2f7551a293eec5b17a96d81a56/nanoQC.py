from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, Int, String

Nanoqc_V0_1_0 = CommandToolBuilder(tool="nanoQC", base_command=["nanoQC"], inputs=[ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Specify directory in which output has to be created.")), ToolInput(tag="in_rna", input_type=Boolean(optional=True), prefix="--rna", doc=InputDocumentation(doc="Fastq is from direct RNA-seq and contains U")), ToolInput(tag="in_l", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="Reads data in fastq.gz format.")), ToolInput(tag="in_nucleotides_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-l MINLEN, --minlen MINLEN"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Specify directory in which output has to be created."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanoqc_V0_1_0().translate("wdl", allow_empty_container=True)

