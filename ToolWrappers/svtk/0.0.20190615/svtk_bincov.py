from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean, Float

Svtk_Bincov_V0_1_0 = CommandToolBuilder(tool="svtk_bincov", base_command=["svtk", "bincov"], inputs=[ToolInput(tag="in_norm_out", input_type=File(optional=True), prefix="--norm_out", doc=InputDocumentation(doc="Output bed file of normalized coverage")), ToolInput(tag="in_binsize", input_type=Int(optional=True), prefix="--binsize", doc=InputDocumentation(doc="Bin size (bp) [1000]")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="Type of coverage to calculate [nucleotide]")), ToolInput(tag="in_blacklist", input_type=File(optional=True), prefix="--blacklist", doc=InputDocumentation(doc="BED file of regions to exclude")), ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="Compress output bed files")), ToolInput(tag="in_pre_subset_ted", input_type=Boolean(optional=True), prefix="--presubsetted", doc=InputDocumentation(doc="Input bam is already subsetted to desired chr")), ToolInput(tag="in_overlap", input_type=Float(optional=True), prefix="--overlap", doc=InputDocumentation(doc="Maximum fraction of each bin permitted to overlap with\nblacklist regions. [0.05]")), ToolInput(tag="in_old_bt", input_type=Boolean(optional=True), prefix="--oldBT", doc=InputDocumentation(doc="Using a bedtools version pre-2.24.0")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Input bam")), ToolInput(tag="in_chr", input_type=String(), position=1, doc=InputDocumentation(doc="Contig to evaluate")), ToolInput(tag="in_cov_out", input_type=String(), position=2, doc=InputDocumentation(doc="Output bed file of raw coverage"))], outputs=[ToolOutput(tag="out_norm_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_norm_out", type_hint=File()), doc=OutputDocumentation(doc="Output bed file of normalized coverage"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtk_Bincov_V0_1_0().translate("wdl", allow_empty_container=True)

