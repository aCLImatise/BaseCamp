from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Singlem_Seqs_V0_1_0 = CommandToolBuilder(tool="singlem_seqs", base_command=["singlem", "seqs"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="output debug information")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="only output errors")), ToolInput(tag="in_full_help", input_type=Boolean(optional=True), prefix="--full_help", doc=InputDocumentation(doc="display all help options")), ToolInput(tag="in_alignment", input_type=String(optional=True), prefix="--alignment", doc=InputDocumentation(doc="Protein sequences hmmaligned and converted to fasta\nformat with seqmagick")), ToolInput(tag="in_alignment_type", input_type=String(optional=True), prefix="--alignment_type", doc=InputDocumentation(doc="alignment is 'aa' or 'dna'")), ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="--window_size", doc=InputDocumentation(doc="Number of nucleotides to use in continuous window"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singlem_Seqs_V0_1_0().translate("wdl", allow_empty_container=True)

