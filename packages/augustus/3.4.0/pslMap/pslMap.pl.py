from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pslmap_Pl_V0_1_0 = CommandToolBuilder(tool="pslMap.pl", base_command=["pslMap.pl"], inputs=[ToolInput(tag="in_in", input_type=String(), position=0, doc=InputDocumentation(doc="psl input file, e.g. from an alignment of transcript reads against mRNA sequences")), ToolInput(tag="in_map", input_type=String(), position=1, doc=InputDocumentation(doc="psl input file, e.g. from an alignment of mRNA sequences against a genome\nThe queries of map must be the targets of in.")), ToolInput(tag="in_out", input_type=String(), position=2, doc=InputDocumentation(doc="psl output file, e.g. the inferred alignment of transcript reads against the genome")), ToolInput(tag="in_filter_unspliced", input_type=String(), position=3, doc=InputDocumentation(doc="alignments in in.psl that do not cover an intron in map.psl are not reported in out.psl")), ToolInput(tag="in_min_match", input_type=String(), position=4, doc=InputDocumentation(doc="filter out alignments with a number of matches (first column) that is below this (default: 0)"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslmap_Pl_V0_1_0().translate("wdl")

