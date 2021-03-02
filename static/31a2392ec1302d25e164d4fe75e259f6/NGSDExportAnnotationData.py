from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Float, Int, String

Ngsdexportannotationdata_V0_1_0 = CommandToolBuilder(tool="NGSDExportAnnotationData", base_command=["NGSDExportAnnotationData"], inputs=[ToolInput(tag="in_variants", input_type=File(optional=True), prefix="-variants", doc=InputDocumentation(doc="Output variant list as VCF.")), ToolInput(tag="in_genes", input_type=File(optional=True), prefix="-genes", doc=InputDocumentation(doc="Optional BED file containing the genes and the gene info (only germline).\nDefault value: ''")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="-reference", doc=InputDocumentation(doc="Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used.\nDefault value: ''")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Uses the test database instead of on the production database.\nDefault value: 'false'")), ToolInput(tag="in_max_af", input_type=Float(optional=True), prefix="-maxAF", doc=InputDocumentation(doc="Determines the maximum allel frequency for the variants (default: 0.05).\nDefault value: '0.05'")), ToolInput(tag="in_gene_offset", input_type=Int(optional=True), prefix="-gene_offset", doc=InputDocumentation(doc="Defines the number of bases by which the region of each gene is extended.\nDefault value: '5000'")), ToolInput(tag="in_chr", input_type=String(optional=True), prefix="-chr", doc=InputDocumentation(doc="Limit export to the given chromosome.\nDefault value: ''")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="-mode", doc=InputDocumentation(doc="Determines the database which is exported.\nDefault value: 'germline'\nValid: 'germline,somatic'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngsdexportannotationdata_V0_1_0().translate("wdl")

