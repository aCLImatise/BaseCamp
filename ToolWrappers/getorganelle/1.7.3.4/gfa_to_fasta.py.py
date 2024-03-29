from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Gfa_To_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="gfa_to_fasta.py", base_command=["gfa_to_fasta.py"], inputs=[ToolInput(tag="in_gfa_two_fasta_do_tpy", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/getorganelle:1.7.3.4--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfa_To_Fasta_Py_V0_1_0().translate("wdl")

