from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Filtertadsandloops_Pl_V0_1_0 = CommandToolBuilder(tool="filterTADsAndLoops.pl", base_command=["filterTADsAndLoops.pl"], inputs=[ToolInput(tag="in_def_out", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="(def: out)")), ToolInput(tag="in_loop", input_type=Int(optional=True), prefix="-loop", doc=InputDocumentation(doc="(input loop file, 2D BED format)")), ToolInput(tag="in_tad", input_type=Int(optional=True), prefix="-tad", doc=InputDocumentation(doc="(input TAD file, 2D BED format)")), ToolInput(tag="in_used_calculate_coverage", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="[tagdir2] ... (Used to calculate experiment coverage)")), ToolInput(tag="in_cpu", input_type=Boolean(optional=True), prefix="-cpu", doc=InputDocumentation(doc="<#> (number of processes to use to count reads in multiple tagdirs at once)")), ToolInput(tag="in_genome", input_type=String(optional=True), prefix="-genome", doc=InputDocumentation(doc="(genome version, def: none)")), ToolInput(tag="in_bad_chr", input_type=String(optional=True), prefix="-badChr", doc=InputDocumentation(doc="[chr] ... (chromosomes to skip e.g. chrY, def: none)")), ToolInput(tag="in_res", input_type=Boolean(optional=True), prefix="-res", doc=InputDocumentation(doc="<#> (resolution for interaction/region overlap, def: 15000)")), ToolInput(tag="in_mint_a_dir", input_type=Boolean(optional=True), prefix="-minTADir", doc=InputDocumentation(doc="<#> (minimum TAD inclusion ratio, def: 0)")), ToolInput(tag="in_min_loop_score", input_type=Boolean(optional=True), prefix="-minLoopScore", doc=InputDocumentation(doc="<#> (minimum int score, def: 0)")), ToolInput(tag="in_min_coverage_tad", input_type=Boolean(optional=True), prefix="-minCoverageTAD", doc=InputDocumentation(doc="<#> (minimum TAD coverage ratio relative to average, def: 0.25)")), ToolInput(tag="in_min_coverage_anchor", input_type=Boolean(optional=True), prefix="-minCoverageAnchor", doc=InputDocumentation(doc="<#> (minimum int coverage ratio relative to average, def: 0.25)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filtertadsandloops_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

