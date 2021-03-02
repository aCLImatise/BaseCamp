from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Whatshap_Stats_V0_1_0 = CommandToolBuilder(tool="whatshap_stats", base_command=["whatshap", "stats"], inputs=[ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Write phased blocks to GTF file.")), ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="Name of the sample to process. If not given, use first\nsample found in VCF.")), ToolInput(tag="in_chr_lengths", input_type=Int(optional=True), prefix="--chr-lengths", doc=InputDocumentation(doc="File with chromosome lengths (one line per chromosome,\ntab separated '<chr> <length>') needed to compute N50\nvalues.")), ToolInput(tag="in_tsv", input_type=File(optional=True), prefix="--tsv", doc=InputDocumentation(doc="Filename to write statistics to (tab-separated).")), ToolInput(tag="in_only_sn_vs", input_type=Boolean(optional=True), prefix="--only-snvs", doc=InputDocumentation(doc="Only process SNVs and ignore all other variants.")), ToolInput(tag="in_block_list", input_type=File(optional=True), prefix="--block-list", doc=InputDocumentation(doc="Filename to write list of all blocks to (one block per\nline).")), ToolInput(tag="in_chromosome", input_type=String(optional=True), prefix="--chromosome", doc=InputDocumentation(doc="Name of chromosome to process. If not given, all\nchromosomes in the input VCF are considered.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Whatshap_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

