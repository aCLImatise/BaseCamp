from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bl_Pair_Reads_V0_1_0 = CommandToolBuilder(tool="bl_pair_reads", base_command=["bl-pair-reads"], inputs=[ToolInput(tag="in_specify_input_files", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="specify multiple input FASTQ files")), ToolInput(tag="in_specify_basename_output", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="specify the BASENAME for the output files")), ToolInput(tag="in_use_sep_separator", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="use SEP as the separator in the ID line that precedes the pair number\n[default ' ', for Casava 1.8 headers]")), ToolInput(tag="in_pair_reads", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bl_Pair_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

