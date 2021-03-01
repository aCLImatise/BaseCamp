from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Compare_Masking_Pl_V0_1_0 = CommandToolBuilder(tool="compare_masking.pl", base_command=["compare_masking.pl"], inputs=[ToolInput(tag="in_file_one_dot_fa", input_type=Int(), position=0, doc=InputDocumentation(doc="softmasked fasta file")), ToolInput(tag="in_file_two_dot_fa", input_type=Int(), position=1, doc=InputDocumentation(doc="softmasked second fasta file"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Masking_Pl_V0_1_0().translate("wdl")

