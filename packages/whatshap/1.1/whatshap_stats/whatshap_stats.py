from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Whatshap_Stats_V0_1_0 = CommandToolBuilder(tool="whatshap_stats", base_command=["whatshap", "stats"], inputs=[ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Write phased blocks to GTF file.")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="Name of the sample to process. If not given, use first\nsample found in VCF.")), ToolInput(tag="in_chr_lengths", input_type=File(optional=True), prefix="--chr-lengths", doc=InputDocumentation(doc="Read chromosome lengths from FILE (one line per\nchromosome, tab separated '<chr> <length>'). Needed to\ncompute N50 values.")), ToolInput(tag="in_tsv", input_type=File(optional=True), prefix="--tsv", doc=InputDocumentation(doc="Write statistics in tab-separated value format to FILE")), ToolInput(tag="in_only_sn_vs", input_type=Boolean(optional=True), prefix="--only-snvs", doc=InputDocumentation(doc="Only process SNVs and ignore all other variants.")), ToolInput(tag="in_block_list", input_type=File(optional=True), prefix="--block-list", doc=InputDocumentation(doc="Write list of all blocks to FILE (one block per line)")), ToolInput(tag="in_chromosome", input_type=String(optional=True), prefix="--chromosome", doc=InputDocumentation(doc="Name of chromosome to process. If not given, all\nchromosomes in the input VCF are considered. Can be\nused multiple times\n"))], outputs=[], container="quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Whatshap_Stats_V0_1_0().translate("wdl")

