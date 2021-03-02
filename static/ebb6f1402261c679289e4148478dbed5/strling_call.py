from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Strling_Call_V0_1_0 = CommandToolBuilder(tool="strling_call", base_command=["strling", "call"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="path to fasta file")), ToolInput(tag="in_min_support", input_type=Int(optional=True), prefix="--min-support", doc=InputDocumentation(doc="minimum number of supporting reads for a locus to be reported (default: 6)")), ToolInput(tag="in_min_clip", input_type=Int(optional=True), prefix="--min-clip", doc=InputDocumentation(doc="minimum number of supporting clipped reads for each side of a locus (default: 0)")), ToolInput(tag="in_min_clip_total", input_type=Int(optional=True), prefix="--min-clip-total", doc=InputDocumentation(doc="minimum total number of supporting clipped reads for a locus (default: 0)")), ToolInput(tag="in_min_mapq", input_type=Int(optional=True), prefix="--min-mapq", doc=InputDocumentation(doc="minimum mapping quality (does not apply to STR reads) (default: 40)")), ToolInput(tag="in_loci", input_type=File(optional=True), prefix="--loci", doc=InputDocumentation(doc="Annoated bed file specifying additional STR loci to genotype. Format is: chr start stop repeatunit [name]")), ToolInput(tag="in_bounds", input_type=File(optional=True), prefix="--bounds", doc=InputDocumentation(doc="STRling -bounds.txt file (usually produced by strling merge) specifying additional STR loci to genotype.")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="prefix for output files (default: strling)")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="path to bam file")), ToolInput(tag="in_bin", input_type=String(), position=1, doc=InputDocumentation(doc="bin file previously created by `strling extract`"))], outputs=[], container="quay.io/biocontainers/strling:0.4.1--hbeb723e_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strling_Call_V0_1_0().translate("wdl")

