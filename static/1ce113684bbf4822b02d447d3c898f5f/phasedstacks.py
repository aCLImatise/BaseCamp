from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Phasedstacks_V0_1_0 = CommandToolBuilder(tool="phasedstacks", base_command=["phasedstacks"], inputs=[ToolInput(tag="in_haplotypes", input_type=Boolean(optional=True), prefix="--haplotypes", doc=InputDocumentation(doc=": data were phased as RAD locus haplotypes.")), ToolInput(tag="in_d_prime_bin_size", input_type=Boolean(optional=True), prefix="--dprime-bin-size", doc=InputDocumentation(doc=": size of buckets for binning SNPs at a particular distance to calculate the mean D' value.")), ToolInput(tag="in_d_prime_threshold", input_type=Int(optional=True), prefix="--dprime-threshold", doc=InputDocumentation(doc=": if D' values fall above <val>, set the D' to 1, otherwise set D' to 0.")), ToolInput(tag="in_skip_zeros", input_type=Boolean(optional=True), prefix="--skip-zeros", doc=InputDocumentation(doc=": do not include D' values of zero in the D' output.")), ToolInput(tag="in_minor_allele_freq", input_type=Boolean(optional=True), prefix="--minor-allele-freq", doc=InputDocumentation(doc=": specify a minimum minor allele frequency required to process a nucleotide site (0 < a < 0.5).")), ToolInput(tag="in_min_inform_pairs", input_type=Boolean(optional=True), prefix="--min-inform-pairs", doc=InputDocumentation(doc=": when building D' haplotype blocks, the minimum number of informative D' measures to combine two blocks (default 0.9)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phasedstacks_V0_1_0().translate("wdl", allow_empty_container=True)

