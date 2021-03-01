from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Smof_Reverse_V0_1_0 = CommandToolBuilder(tool="smof_reverse", base_command=["smof", "reverse"], inputs=[ToolInput(tag="in_set_extended_alphabet", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="is set. The extended nucleotide alphabet is supported.")), ToolInput(tag="in_complement", input_type=Boolean(optional=True), prefix="--complement", doc=InputDocumentation(doc="take the reverse complement of the sequence")), ToolInput(tag="in_no_validate", input_type=Boolean(optional=True), prefix="--no-validate", doc=InputDocumentation(doc="do not check whether the sequence is DNA before\nreverse complement")), ToolInput(tag="in_preserve_color", input_type=Boolean(optional=True), prefix="--preserve-color", doc=InputDocumentation(doc="Preserve incoming color")), ToolInput(tag="in_force_color", input_type=Boolean(optional=True), prefix="--force-color", doc=InputDocumentation(doc="print in color even to non-tty (DANGEROUS)")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Reverse_V0_1_0().translate("wdl", allow_empty_container=True)

