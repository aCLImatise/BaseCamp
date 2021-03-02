from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fasta_Subgrep_Pl_V0_1_0 = CommandToolBuilder(tool="fasta_subgrep.pl", base_command=["fasta_subgrep.pl"], inputs=[ToolInput(tag="in_fa", input_type=Boolean(optional=True), prefix="--fa", doc=InputDocumentation(doc="Input file in Fasta format (mandatory)")), ToolInput(tag="in_start", input_type=Boolean(optional=True), prefix="--start", doc=InputDocumentation(doc="Start of the sequence interval to extract")), ToolInput(tag="in_end", input_type=Boolean(optional=True), prefix="--end", doc=InputDocumentation(doc="End of the sequence interval to extract")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="--id", doc=InputDocumentation(doc="Fasta ID of the sequence to extract from. This is only required for\nmulti Fasta input files.")), ToolInput(tag="in_strand", input_type=Boolean(optional=True), prefix="--strand", doc=InputDocumentation(doc="Specify the strand to extract sequence data from. Allowed arguments\nare '+' amd '-'. In the latter case, retrieve reverse complement of\nthe sequence interval from 'start' to 'end'.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Subgrep_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

