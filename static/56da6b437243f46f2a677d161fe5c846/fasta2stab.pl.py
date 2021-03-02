from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Fasta2Stab_Pl_V0_1_0 = CommandToolBuilder(tool="fasta2stab.pl", base_command=["fasta2stab.pl"], inputs=[ToolInput(tag="in_extract_line_num", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc=": Extract only line <num> of the fasta from each sequence\n(useful for parsing alignments given in fasta)")), ToolInput(tag="in_ignore_n", input_type=Boolean(optional=True), prefix="-ignore_N", doc=InputDocumentation(doc=":  Do not print sequences that contain N."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta2Stab_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

