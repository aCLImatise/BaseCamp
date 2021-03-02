from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fasta_Grep_V0_1_0 = CommandToolBuilder(tool="fasta_grep", base_command=["fasta-grep"], inputs=[ToolInput(tag="in_copyright", input_type=String(), position=0, doc=InputDocumentation(doc="(2014) The Regents of the University of California."))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Grep_V0_1_0().translate("wdl")

