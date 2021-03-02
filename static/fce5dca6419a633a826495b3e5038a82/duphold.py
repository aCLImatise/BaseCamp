from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Duphold_V0_1_0 = CommandToolBuilder(tool="duphold", base_command=["duphold"], inputs=[ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="path to sorted SV VCF/BCF")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="path to indexed BAM/CRAM")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="indexed fasta reference.")), ToolInput(tag="in_snp", input_type=File(optional=True), prefix="--snp", doc=InputDocumentation(doc="optional path to snp/indel VCF/BCF with which to annotate SVs. BCF is highly recommended as it's much faster to parse.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of decompression threads. [default: 4]")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="output VCF/BCF (default is VCF to stdout) [default: -]")), ToolInput(tag="in_drop", input_type=Boolean(optional=True), prefix="--drop", doc=InputDocumentation(doc="drop all samples from a multi-sample --vcf *except* the sample in --bam. useful for parallelization by sample followed by merge."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Duphold_V0_1_0().translate("wdl", allow_empty_container=True)

