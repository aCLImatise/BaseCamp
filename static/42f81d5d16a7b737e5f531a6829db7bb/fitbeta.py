from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Int, String

Fitbeta_V0_1_0 = CommandToolBuilder(tool="fitbeta", base_command=["fitbeta"], inputs=[ToolInput(tag="in_snp_file", input_type=File(optional=True), prefix="--snpfile", doc=InputDocumentation(doc="File with read counts for germline SNP from all\nsamples")), ToolInput(tag="in_seg_file", input_type=File(optional=True), prefix="--segfile", doc=InputDocumentation(doc="SEG file with allele-specific copy numbers")), ToolInput(tag="in_sensitivity", input_type=Float(optional=True), prefix="--sensitivity", doc=InputDocumentation(doc="Sensitivity E to exclude SNPs with 0.5 - E <= BAF <\n0.5 (default: 0.1)")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="Number of parallele jobs to use (default: equal to\nnumber of available processors)")), ToolInput(tag="in_restarts", input_type=Int(optional=True), prefix="--restarts", doc=InputDocumentation(doc="Maximum size of brute-force search (default: 1e4)")), ToolInput(tag="in_skip", input_type=Int(optional=True), prefix="--skip", doc=InputDocumentation(doc="Numbers to skip in the brute-force search (default:\n10)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Output prefix (default: ./)")), ToolInput(tag="in_seed", input_type=String(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random-generator seed (default: None)"))], outputs=[], container="quay.io/biocontainers/decifer:1.0.0--py27h36946f9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fitbeta_V0_1_0().translate("wdl")

