from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Vcf2Ld_Gene_V0_1_0 = CommandToolBuilder(tool="vcf2ld_gene", base_command=["vcf2ld_gene"], inputs=[ToolInput(tag="in_in_vcf", input_type=Boolean(optional=True), prefix="--inVcf", doc=InputDocumentation(doc=": input VCF File")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc=": output prefix")), ToolInput(tag="in_people_include_id", input_type=Boolean(optional=True), prefix="--peopleIncludeID", doc=InputDocumentation(doc=": give IDs of people that will be included in study")), ToolInput(tag="in_people_include_file", input_type=Boolean(optional=True), prefix="--peopleIncludeFile", doc=InputDocumentation(doc=": from given file, set IDs of people that will be\nincluded in study")), ToolInput(tag="in_people_exclude_id", input_type=Boolean(optional=True), prefix="--peopleExcludeID", doc=InputDocumentation(doc=": give IDs of people that will be included in study")), ToolInput(tag="in_people_exclude_file", input_type=Boolean(optional=True), prefix="--peopleExcludeFile", doc=InputDocumentation(doc=": from given file, set IDs of people that will be\nincluded in study")), ToolInput(tag="in_range_list", input_type=Boolean(optional=True), prefix="--rangeList", doc=InputDocumentation(doc=": Specify some ranges to use, please use chr:begin-end")), ToolInput(tag="in_site_file", input_type=Boolean(optional=True), prefix="--siteFile", doc=InputDocumentation(doc=": Specify the file containing sites to include, please\nuse 'chr pos' format.")), ToolInput(tag="in_gene_file", input_type=Boolean(optional=True), prefix="--geneFile", doc=InputDocumentation(doc=": specify a gene file (for burden tests)")), ToolInput(tag="in_gene", input_type=Boolean(optional=True), prefix="--gene", doc=InputDocumentation(doc=": specify which genes to test")), ToolInput(tag="in_format_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--rangeFile: Specify the file containing ranges, please use"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf2Ld_Gene_V0_1_0().translate("wdl", allow_empty_container=True)

