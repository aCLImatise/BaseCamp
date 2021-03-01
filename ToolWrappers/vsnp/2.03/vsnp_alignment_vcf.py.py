from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Vsnp_Alignment_Vcf_Py_V0_1_0 = CommandToolBuilder(tool="vsnp_alignment_vcf.py", base_command=["vsnp_alignment_vcf.py"], inputs=[ToolInput(tag="in_read_one", input_type=Int(optional=True), prefix="--read1", doc=InputDocumentation(doc="Required: single read, R1 when Illumina read")), ToolInput(tag="in_read_two", input_type=Int(optional=True), prefix="--read2", doc=InputDocumentation(doc="Optional: R2 Illumina read")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Optional: Provide reference option or FASTA file. If\nneither are given, no -r option, then a\nTB/Brucella/paraTB best reference are searched")), ToolInput(tag="in_gbk", input_type=File(optional=True), prefix="--gbk", doc=InputDocumentation(doc="Optional: gbk to annotate VCF file")), ToolInput(tag="in_skip_assembly", input_type=Boolean(optional=True), prefix="--skip_assembly", doc=InputDocumentation(doc="skip assembly of unmapped reads")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment_vcf_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Alignment_Vcf_Py_V0_1_0().translate("wdl", allow_empty_container=True)

