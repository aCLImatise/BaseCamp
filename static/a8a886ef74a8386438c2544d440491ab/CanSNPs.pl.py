from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cansnps_Pl_V0_1_0 = CommandToolBuilder(tool="CanSNPs.pl", base_command=["CanSNPs.pl"], inputs=[ToolInput(tag="in_group", input_type=Boolean(optional=True), prefix="--group", doc=InputDocumentation(doc="Group inforamtion in tab-delimited text file [mutually exclusive to list]\nex:   ID               Group\nfasta_header_A   A\nfasta_header_B   A\nfasta_header_C   B\nfasta_header_D   B")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Fraction of nucleotide in a group for defining Canonical SNPs (default :0.5)")), ToolInput(tag="in_symbol", input_type=Boolean(optional=True), prefix="--symbol", doc=InputDocumentation(doc="Not Canonical nt will use symbol in the output (default: '-')")), ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc="--list     file with a list fasta headers. one per line [mutually exclusive to group]\nThe list will be treated as One group. All other sequences in the input\nalignment will be as Another group."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cansnps_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

