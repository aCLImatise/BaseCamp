from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float

Variant_Annotation_Py_V0_1_0 = CommandToolBuilder(tool="variant_annotation.py", base_command=["variant_annotation.py"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--infile", doc=InputDocumentation(doc="input vcf file (default: None)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="output vcf file (default: None)")), ToolInput(tag="in_dbsnp", input_type=File(optional=True), prefix="--dbsnp", doc=InputDocumentation(doc="dbsnp vcf file to feed into GATK4 HaplotypeCaller\n(default: None)")), ToolInput(tag="in_cosmic", input_type=File(optional=True), prefix="--cosmic", doc=InputDocumentation(doc="cosmic vcf file to feed into GATK4 HaplotypeCaller\n(default: None)")), ToolInput(tag="in_snp_sift", input_type=String(optional=True), prefix="--snpsift", doc=InputDocumentation(doc="SnpSift JAR (default: None)")), ToolInput(tag="in_snp_eff", input_type=String(optional=True), prefix="--snpeff", doc=InputDocumentation(doc="snpEff JAR (default: None)")), ToolInput(tag="in_snp_eff_db", input_type=Float(optional=True), prefix="--snpeff-db", doc=InputDocumentation(doc="snpEff db (default: GRCh38.86)\n"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="output vcf file (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Variant_Annotation_Py_V0_1_0().translate("wdl", allow_empty_container=True)

