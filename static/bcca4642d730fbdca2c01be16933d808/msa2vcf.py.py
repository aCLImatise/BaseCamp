from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Msa2Vcf_Py_V0_1_0 = CommandToolBuilder(tool="msa2vcf.py", base_command=["msa2vcf.py"], inputs=[ToolInput(tag="in_reference_sequence", input_type=String(optional=True), prefix="--reference-sequence", doc=InputDocumentation(doc="[--bcftools BCFTOOLS]")), ToolInput(tag="in_reference_chr", input_type=String(optional=True), prefix="--reference-chr", doc=InputDocumentation(doc="Reference chromosome")), ToolInput(tag="in_reference_start", input_type=String(optional=True), prefix="--reference-start", doc=InputDocumentation(doc="Reference start pos")), ToolInput(tag="in_bcf_tools", input_type=File(optional=True), prefix="--bcftools", doc=InputDocumentation(doc="Path to bcftools")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Input Fasta MSA file")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Output VCF file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msa2Vcf_Py_V0_1_0().translate("wdl", allow_empty_container=True)

