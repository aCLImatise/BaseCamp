from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Strling_Index_V0_1_0 = CommandToolBuilder(tool="strling_index", base_command=["strling", "index"], inputs=[ToolInput(tag="in_genome_repeats", input_type=File(optional=True), prefix="--genome-repeats", doc=InputDocumentation(doc="optional path to output genome repeats file. if it does not exist, it will be created (default: ./<FASTA>.str)")), ToolInput(tag="in_proportion_repeat", input_type=String(optional=True), prefix="--proportion-repeat", doc=InputDocumentation(doc="proportion of read that is repetitive to be considered as STR (default: 0.8)")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="path to fasta file"))], outputs=[ToolOutput(tag="out_genome_repeats", output_type=File(optional=True), selector=InputSelector(input_to_select="in_genome_repeats", type_hint=File()), doc=OutputDocumentation(doc="optional path to output genome repeats file. if it does not exist, it will be created (default: ./<FASTA>.str)"))], container="quay.io/biocontainers/strling:0.4.2--hbeb723e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strling_Index_V0_1_0().translate("wdl")

