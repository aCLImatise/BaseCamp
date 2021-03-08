from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Vcfroc_V0_1_0 = CommandToolBuilder(tool="vcfroc", base_command=["vcfroc"], inputs=[ToolInput(tag="in_truth_vcf", input_type=File(optional=True), prefix="--truth-vcf", doc=InputDocumentation(doc="use this VCF as ground truth for ROC generation")), ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="--window-size", doc=InputDocumentation(doc="compare records up to this many bp away (default 30)")), ToolInput(tag="in_complex", input_type=Boolean(optional=True), prefix="--complex", doc=InputDocumentation(doc="directly compare complex alleles, don't parse into primitives")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="FASTA reference file")), ToolInput(tag="in_vcf_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfroc_V0_1_0().translate("wdl")

