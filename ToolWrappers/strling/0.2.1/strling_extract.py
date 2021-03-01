from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Strling_Extract_V0_1_0 = CommandToolBuilder(tool="strling_extract", base_command=["strling", "extract"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="path to fasta file (required for CRAM)")), ToolInput(tag="in_genome_repeats", input_type=File(optional=True), prefix="--genome-repeats", doc=InputDocumentation(doc="optional path to genome repeats file. if it does not exist, it will be created")), ToolInput(tag="in_proportion_repeat", input_type=String(optional=True), prefix="--proportion-repeat", doc=InputDocumentation(doc="proportion of read that is repetitive to be considered as STR (default: 0.8)")), ToolInput(tag="in_min_mapq", input_type=Int(optional=True), prefix="--min-mapq", doc=InputDocumentation(doc="minimum mapping quality (does not apply to STR reads) (default: 40)")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="path to bam file")), ToolInput(tag="in_bin", input_type=String(), position=1, doc=InputDocumentation(doc="path bin to output bin file to be created"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strling_Extract_V0_1_0().translate("wdl", allow_empty_container=True)

