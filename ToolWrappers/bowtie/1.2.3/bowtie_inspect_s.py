from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Bowtie_Inspect_S_V0_1_0 = CommandToolBuilder(tool="bowtie_inspect_s", base_command=["bowtie-inspect-s"], inputs=[ToolInput(tag="in_across", input_type=Int(optional=True), prefix="--across", doc=InputDocumentation(doc="Number of characters across in FASTA output (default: 60)")), ToolInput(tag="in_names", input_type=Boolean(optional=True), prefix="--names", doc=InputDocumentation(doc="Print reference sequence names only")), ToolInput(tag="in_summary", input_type=Boolean(optional=True), prefix="--summary", doc=InputDocumentation(doc="Print summary incl. ref names, lengths, index properties")), ToolInput(tag="in_e_bwt_ref", input_type=Boolean(optional=True), prefix="--ebwt-ref", doc=InputDocumentation(doc="Reconstruct reference from ebwt (slow, preserves colors)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose output (for debugging)")), ToolInput(tag="in_bowtie_inspect", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bowtie_Inspect_S_V0_1_0().translate("wdl", allow_empty_container=True)

