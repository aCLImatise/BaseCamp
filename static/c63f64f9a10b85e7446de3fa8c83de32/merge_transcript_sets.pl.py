from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Merge_Transcript_Sets_Pl_V0_1_0 = CommandToolBuilder(tool="merge_transcript_sets.pl", base_command=["merge_transcript_sets.pl"], inputs=[ToolInput(tag="in_transcripts_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Attention: nonredundant transcript names over all sets are assumed!")), ToolInput(tag="in_set_ndot_gtf", input_type=String(), position=0, doc=InputDocumentation(doc="file with gene predictions in gtf format"))], outputs=[], container="quay.io/biocontainers/braker2:2.1.6--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Transcript_Sets_Pl_V0_1_0().translate("wdl")

