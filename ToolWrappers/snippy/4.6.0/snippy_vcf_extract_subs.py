from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Snippy_Vcf_Extract_Subs_V0_1_0 = CommandToolBuilder(tool="snippy_vcf_extract_subs", base_command=["snippy-vcf_extract_subs"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="+        Output verbose debug info (default '0').")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="FASTA reference (default '').")), ToolInput(tag="in_haploid", input_type=Boolean(optional=True), prefix="--haploid", doc=InputDocumentation(doc="!      Convert to haploid genotypes (default '0').")), ToolInput(tag="in_info_tags", input_type=String(optional=True), prefix="--info-tags", doc=InputDocumentation(doc="Keep these INFO tags (default 'TYPE,DP,RO,AO,AF').")), ToolInput(tag="in_format_tags", input_type=String(optional=True), prefix="--format-tags", doc=InputDocumentation(doc="Keep these FORMAT tags (default 'GT,DP,RO,AO,QR,QA').")), ToolInput(tag="in_filter", input_type=String(optional=True), prefix="--filter", doc=InputDocumentation(doc="Set FILTER to this (default '')."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snippy_Vcf_Extract_Subs_V0_1_0().translate("wdl", allow_empty_container=True)

