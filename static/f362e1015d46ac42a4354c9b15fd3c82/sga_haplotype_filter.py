from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Sga_Haplotype_Filter_V0_1_0 = CommandToolBuilder(tool="sga_haplotype_filter", base_command=["sga", "haplotype-filter"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_reads", input_type=File(optional=True), prefix="--reads", doc=InputDocumentation(doc="load the FM-index of the reads in FILE")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="load the reference genome from FILE")), ToolInput(tag="in_haploid", input_type=Boolean(optional=True), prefix="--haploid", doc=InputDocumentation(doc="force use of the haploid model")), ToolInput(tag="in_out_prefix", input_type=String(optional=True), prefix="--out-prefix", doc=InputDocumentation(doc="write the passed haplotypes and variants to STR.vcf and STR.fa")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use NUM threads to compute the overlaps (default: 1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Haplotype_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

