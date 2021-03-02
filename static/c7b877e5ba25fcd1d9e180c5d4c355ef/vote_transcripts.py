from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float

Vote_Transcripts_V0_1_0 = CommandToolBuilder(tool="vote_transcripts", base_command=["vote-transcripts"], inputs=[ToolInput(tag="in_lg", input_type=Boolean(optional=True), prefix="--lg", doc=InputDocumentation(doc=": path to the list of GTF files.")), ToolInput(tag="in_threshold_average_coverage", input_type=Float(optional=True), prefix="-d", doc=InputDocumentation(doc=": threshold of average coverage depth across all the samples. (default: 1)"))], outputs=[], container="quay.io/biocontainers/psiclass:1.0.2--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vote_Transcripts_V0_1_0().translate("wdl")

