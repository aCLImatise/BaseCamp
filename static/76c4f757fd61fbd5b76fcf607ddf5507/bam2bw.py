from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bam2Bw_V0_1_0 = CommandToolBuilder(tool="bam2bw", base_command=["bam2bw"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="[file]                                Path to the input [b|cr]am file.")), ToolInput(tag="in_filter", input_type=Boolean(optional=True), prefix="--filter", doc=InputDocumentation(doc="[int]                                SAM flags to filter. [default: 4]")), ToolInput(tag="in_filter_include", input_type=Boolean(optional=True), prefix="--filter-include", doc=InputDocumentation(doc="[int]                        SAM flags to include. [default: 0]\nN.B. if properly paired reads are filtered for inclusion bam2bw will assume paired-end data\nand exclude any proper-pair flagged reads not in F/R orientation.-o  --outfile [file]                              Path to the output .bw file produced. [default:'output.bam.bw']")), ToolInput(tag="in_scale_log_one_zero", input_type=Boolean(optional=True), prefix="--scale-log10", doc=InputDocumentation(doc="[float]                         A scale factor to multiply to output [default: -634359778]")), ToolInput(tag="in_region", input_type=Boolean(optional=True), prefix="--region", doc=InputDocumentation(doc="[file]                               A samtools style region (contig:start-stop) or a bed file of regions over which to produce the bigwig file")), ToolInput(tag="in_include_zeroes", input_type=Boolean(optional=True), prefix="--include-zeroes", doc=InputDocumentation(doc="Include zero coverage regions as additional entries to the bw file")), ToolInput(tag="in_reference", input_type=Boolean(optional=True), prefix="--reference", doc=InputDocumentation(doc="[file]                            Path to reference genome.fa file (required for cram if ref_path cannot be resolved)")), ToolInput(tag="in_overlap", input_type=Boolean(optional=True), prefix="--overlap", doc=InputDocumentation(doc="Use overlapping read check")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_b_vertical_line_cr", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_am", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Bw_V0_1_0().translate("wdl", allow_empty_container=True)

