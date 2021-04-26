from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Megalodon_Extras_Phase_Variants_Merge_Haploid_Variants_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_phase_variants_merge_haploid_variants", base_command=["megalodon_extras", "phase_variants", "merge_haploid_variants"], inputs=[ToolInput(tag="in_out_vcf", input_type=String(optional=True), prefix="--out-vcf", doc=InputDocumentation(doc="Output name for VCF. Default:")), ToolInput(tag="in_diploid_called_variants", input_type=String(), position=0, doc=InputDocumentation(doc="Phased variants from which the diploid calls are")), ToolInput(tag="in_derived_dot", input_type=String(), position=1, doc=InputDocumentation(doc="haplotype1_variants   Variant file for haplotype 1.")), ToolInput(tag="in_haplotype_two_variants", input_type=Int(), position=2, doc=InputDocumentation(doc="Variant file for haplotype 2.")), ToolInput(tag="in_merged_haploid_variants_dot_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="--force-invalid-variant-processing"))], outputs=[], container="quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Phase_Variants_Merge_Haploid_Variants_V0_1_0().translate("wdl")

