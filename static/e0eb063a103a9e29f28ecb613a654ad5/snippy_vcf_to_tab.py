from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Snippy_Vcf_To_Tab_V0_1_0 = CommandToolBuilder(tool="snippy_vcf_to_tab", base_command=["snippy-vcf_to_tab"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="!        Output verbose debug info (default '0').")), ToolInput(tag="in_auto", input_type=Boolean(optional=True), prefix="--auto", doc=InputDocumentation(doc="!         Autoset --vcf/ref/gff to default Snippy names (default '0').")), ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="VCF input file (default '').")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="FASTA reference sequence (default '').")), ToolInput(tag="in_gff", input_type=String(optional=True), prefix="--gff", doc=InputDocumentation(doc="GFF reference features (default '')."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snippy_Vcf_To_Tab_V0_1_0().translate("wdl", allow_empty_container=True)

