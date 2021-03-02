from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gtf_To_Fasta_V0_1_0 = CommandToolBuilder(tool="gtf_to_fasta", base_command=["gtf_to_fasta"], inputs=[ToolInput(tag="in_transcripts_dot_gtf", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtf_To_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

