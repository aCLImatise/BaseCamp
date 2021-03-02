from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Strling_Merge_V0_1_0 = CommandToolBuilder(tool="strling_merge", base_command=["strling", "merge"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="path to fasta file (required if using CRAM input)")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="Number of bp within which to search for reads supporting the other side of a bound. Estimated from the insert size distribution by default. (default: -1)")), ToolInput(tag="in_min_support", input_type=Int(optional=True), prefix="--min-support", doc=InputDocumentation(doc="minimum number of supporting reads for a locus to be reported (default: 6)")), ToolInput(tag="in_min_clip", input_type=Int(optional=True), prefix="--min-clip", doc=InputDocumentation(doc="minimum number of supporting clipped reads for each side of a locus (default: 0)")), ToolInput(tag="in_min_clip_total", input_type=Int(optional=True), prefix="--min-clip-total", doc=InputDocumentation(doc="minimum total number of supporting clipped reads for a locus (default: 0)")), ToolInput(tag="in_min_mapq", input_type=Int(optional=True), prefix="--min-mapq", doc=InputDocumentation(doc="minimum mapping quality (does not apply to STR reads) (default: 40)")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Annoated bed file specifying additional STR loci to genotype. Format is: chr start stop repeatunit [name]")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="prefix for output files. Suffix will be -bounds.txt (default: strling)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strling_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

