from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Magpurify_Coverage_V0_1_0 = CommandToolBuilder(tool="magpurify_coverage", base_command=["magpurify", "coverage"], inputs=[ToolInput(tag="in_max_deviation", input_type=Int(optional=True), prefix="--max-deviation", doc=InputDocumentation(doc="Contigs with coverage greater than [max-deviation *\nmean coverage] or less than [(1/max-deviation) * mean\ncoverage] will be flagged as outliers (default: 5.0)")), ToolInput(tag="in_weighted_mean", input_type=Boolean(optional=True), prefix="--weighted-mean", doc=InputDocumentation(doc="Compute the mean weighted by the contig length\n(default: False)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPUs to use (default: 1)")), ToolInput(tag="in_fna", input_type=String(), position=0, doc=InputDocumentation(doc="Path to input genome in FASTA format")), ToolInput(tag="in_out", input_type=String(), position=1, doc=InputDocumentation(doc="Output directory to store results and intermediate")), ToolInput(tag="in_files", input_type=String(), position=2, doc=InputDocumentation(doc="bams                  Path to input sorted BAM file(s)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Magpurify_Coverage_V0_1_0().translate("wdl", allow_empty_container=True)

