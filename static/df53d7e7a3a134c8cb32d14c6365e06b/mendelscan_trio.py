from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Mendelscan_Trio_V0_1_0 = CommandToolBuilder(tool="mendelscan_trio", base_command=["mendelscan", "trio"], inputs=[ToolInput(tag="in_vep_file", input_type=Boolean(optional=True), prefix="--vep-file", doc=InputDocumentation(doc="Variant annotation in VEP format")), ToolInput(tag="in_ped_file", input_type=Boolean(optional=True), prefix="--ped-file", doc=InputDocumentation(doc="Pedigree file in 6-column tab-delimited format")), ToolInput(tag="in_gene_file", input_type=Boolean(optional=True), prefix="--gene-file", doc=InputDocumentation(doc="A list of gene expression values for tissue of interest")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Output file to contain summary report")), ToolInput(tag="in_output_recessive", input_type=File(optional=True), prefix="--output-recessive", doc=InputDocumentation(doc="Output file to contain scored variants in VCF format")), ToolInput(tag="in_output_de_novo", input_type=File(optional=True), prefix="--output-denovo", doc=InputDocumentation(doc="file for possible de novo variants")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_trio", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file to contain summary report")), ToolOutput(tag="out_output_recessive", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_recessive", type_hint=File()), doc=OutputDocumentation(doc="Output file to contain scored variants in VCF format"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mendelscan_Trio_V0_1_0().translate("wdl", allow_empty_container=True)

