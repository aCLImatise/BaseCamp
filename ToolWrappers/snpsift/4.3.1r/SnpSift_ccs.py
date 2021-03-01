from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Snpsift_Ccs_V0_1_0 = CommandToolBuilder(tool="SnpSift_ccs", base_command=["SnpSift", "ccs"], inputs=[ToolInput(tag="in__be_quiet", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": Be quiet")), ToolInput(tag="in__be_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": Be verbose")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_file_do_ttf_am", input_type=File(), position=0, doc=InputDocumentation(doc=": File with genotypes and groups informations (groups are in familyId)")), ToolInput(tag="in_file_dot_bed", input_type=File(), position=1, doc=InputDocumentation(doc=": File with regions of interest (intervals in BED format)")), ToolInput(tag="in_file_dot_vcf", input_type=File(), position=2, doc=InputDocumentation(doc=": A VCF file (variants and genotype data)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Ccs_V0_1_0().translate("wdl", allow_empty_container=True)

