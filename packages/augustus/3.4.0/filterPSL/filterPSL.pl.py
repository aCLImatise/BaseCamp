from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

Filterpsl_Pl_V0_1_0 = CommandToolBuilder(tool="filterPSL.pl", base_command=["filterPSL.pl"], inputs=[ToolInput(tag="in_pair_bed", input_type=Int(optional=True), prefix="--pairbed", doc=InputDocumentation(doc="file name of pairedness coverage:\na .bed format file in which for each position the number of filtered\nread pairs is reported that contain the position in or between the reads")), ToolInput(tag="in_mini_d", input_type=Int(optional=True), prefix="--minId", doc=InputDocumentation(doc="minimal percentage of identity (default 92)")), ToolInput(tag="in_min_cover", input_type=Int(optional=True), prefix="--minCover", doc=InputDocumentation(doc="minimal percentage of coverage of the query read (default 80)")), ToolInput(tag="in_uniq", input_type=Boolean(optional=True), prefix="--uniq", doc=InputDocumentation(doc="take only best match and only, when second best is much worse (default false)")), ToolInput(tag="in_uniq_thresh", input_type=Boolean(optional=True), prefix="--uniqthresh", doc=InputDocumentation(doc="threshold % for uniq, second best must be at most this fraction of best (default .96)")), ToolInput(tag="in_best", input_type=Boolean(optional=True), prefix="--best", doc=InputDocumentation(doc="output all best matches that satisfy minId and minCover")), ToolInput(tag="in_common_gene_file", input_type=File(optional=True), prefix="--commongenefile", doc=InputDocumentation(doc="file name in which to write cases where one read maps to several different genes")), ToolInput(tag="in_no_introns", input_type=Boolean(optional=True), prefix="--nointrons", doc=InputDocumentation(doc="do not allow longer gaps (for RNA-RNA alignments)")), ToolInput(tag="in_paired", input_type=Boolean(optional=True), prefix="--paired", doc=InputDocumentation(doc="require that paired reads are on opposite strands of same target(default false)")), ToolInput(tag="in_max_intron_len", input_type=Int(optional=True), prefix="--maxintronlen", doc=InputDocumentation(doc="maximal separation of paired reads (default 500000")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="output debugging info (default false)"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filterpsl_Pl_V0_1_0().translate("wdl")

