from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fasta_Re_Match_V0_1_0 = CommandToolBuilder(tool="fasta_re_match", base_command=["fasta-re-match"], inputs=[ToolInput(tag="in_norc", input_type=Boolean(optional=True), prefix="-norc", doc=InputDocumentation(doc="Only find matches to motifs in the given strand")), ToolInput(tag="in_erase", input_type=String(optional=True), prefix="-erase", doc=InputDocumentation(doc="erases this motif before finding matches;\nrepeatable; order matters!")), ToolInput(tag="in_iupac_dna_motif", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Re_Match_V0_1_0().translate("wdl")

