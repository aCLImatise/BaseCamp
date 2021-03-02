from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Falconc_Bam2Clippedfasta_V0_1_0 = CommandToolBuilder(tool="falconc_bam2clippedFasta", base_command=["falconc", "bam2clippedFasta"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__inbam_string", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --in-bam=  string  REQUIRED  input bam name")), ToolInput(tag="in__region_string", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="=, --region=  string  REQUIRED  htslib formatted region seqid:start-end")), ToolInput(tag="in_flag_int_filter", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="=, --flag=    int     3844      filter reads with flag")), ToolInput(tag="in_flip_rc", input_type=Boolean(optional=True), prefix="--flip-rc", doc=InputDocumentation(doc="bool    false     reverse complement (RC) the sequence if\nalignment is in RC\n")), ToolInput(tag="in_bam_two_clipped_fast_a", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Bam2Clippedfasta_V0_1_0().translate("wdl")

