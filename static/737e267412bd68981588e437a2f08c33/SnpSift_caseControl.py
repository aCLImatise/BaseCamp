from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Snpsift_Casecontrol_V0_1_0 = CommandToolBuilder(tool="SnpSift_caseControl", base_command=["SnpSift", "caseControl"], inputs=[ToolInput(tag="in_chi_two", input_type=Boolean(optional=True), prefix="-chi2", doc=InputDocumentation(doc=": Use ChiSquare approximarion instead of Fisher exact test.")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="-name", doc=InputDocumentation(doc=": A name to be added after to 'Cases' or 'Controls' tags")), ToolInput(tag="in_tf_am", input_type=File(optional=True), prefix="-tfam", doc=InputDocumentation(doc=": A TFAM file having case/control informations (phenotype colmun)")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_vcf", input_type=File(), position=0, doc=InputDocumentation(doc=": A VCF file (variants and genotype data)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Casecontrol_V0_1_0().translate("wdl", allow_empty_container=True)

