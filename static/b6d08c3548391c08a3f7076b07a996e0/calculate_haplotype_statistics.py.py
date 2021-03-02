from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Array, Boolean

Calculate_Haplotype_Statistics_Py_V0_1_0 = CommandToolBuilder(tool="calculate_haplotype_statistics.py", base_command=["calculate_haplotype_statistics.py"], inputs=[ToolInput(tag="in_v_two", input_type=Int(optional=True), prefix="-v2", doc=InputDocumentation(doc="optionally -h2 arguments). All files must contain information for one")), ToolInput(tag="in_vcf_one", input_type=Array(t=Int(), optional=True), prefix="--vcf1", doc=InputDocumentation(doc="A phased, single sample VCF file to compute haplotype\nstatistics on.")), ToolInput(tag="in_vcf_two", input_type=Array(t=Int(), optional=True), prefix="--vcf2", doc=InputDocumentation(doc="A phased, single sample VCF file to use as the 'ground\ntruth' haplotype.")), ToolInput(tag="in_haplotype_blocks_one", input_type=Array(t=Int(), optional=True), prefix="--haplotype_blocks1", doc=InputDocumentation(doc="Override the haplotype information in '-v1' with the\ninformation in this HapCUT2-format haplotype block\nfile. If this option is used, then the VCF specified\nwith -v1 MUST be the same VCF used with HapCUT2\n(--vcf) to produce the haplotype block file!")), ToolInput(tag="in_haplotype_blocks_two", input_type=Array(t=Int(), optional=True), prefix="--haplotype_blocks2", doc=InputDocumentation(doc="Override the haplotype information in '-v2' with the\ninformation in this HapCUT2-format haplotype block\nfile. If this option is used, then the VCF specified\nwith -v2 MUST be the same VCF used with HapCUT2\n(--vcf) to produce the haplotype block file!")), ToolInput(tag="in_indels", input_type=Boolean(optional=True), prefix="--indels", doc=InputDocumentation(doc="Use this flag to consider indel variants. Default:\nIndels ignored.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calculate_Haplotype_Statistics_Py_V0_1_0().translate("wdl", allow_empty_container=True)

