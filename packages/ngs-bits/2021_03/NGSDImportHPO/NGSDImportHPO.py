from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Ngsdimporthpo_V0_1_0 = CommandToolBuilder(tool="NGSDImportHPO", base_command=["NGSDImportHPO"], inputs=[ToolInput(tag="in_obo", input_type=File(optional=True), prefix="-obo", doc=InputDocumentation(doc="HPO ontology file from 'http://purl.obolibrary.org/obo/hp.obo'.")), ToolInput(tag="in_an_no", input_type=File(optional=True), prefix="-anno", doc=InputDocumentation(doc="HPO annotations file from 'https://ci.monarchinitiative.org/view/hpo/job/hpo.annotations/lastSuccessfulBuild/artifact/rare-diseases/util/annotation/phenotype_to_genes.txt'")), ToolInput(tag="in_omim", input_type=File(optional=True), prefix="-omim", doc=InputDocumentation(doc="OMIM 'morbidmap.txt' file for additional disease-gene information, from 'https://omim.org/downloads/'.\nDefault value: ''")), ToolInput(tag="in_clin_var", input_type=File(optional=True), prefix="-clinvar", doc=InputDocumentation(doc="ClinVar VCF file for additional disease-gene information. Download and unzip from 'ftp://ftp.ncbi.nlm.nih.gov/pub/clinvar/vcf_GRCh37/archive_2.0/2021/clinvar_20210110.vcf.gz'.\nDefault value: ''")), ToolInput(tag="in_hgmd", input_type=File(optional=True), prefix="-hgmd", doc=InputDocumentation(doc="HGMD phenobase file (Manually download and unzip 'hgmd_phenbase-2020.4.dump').\nDefault value: ''")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="-test", doc=InputDocumentation(doc="Uses the test database instead of on the production database.\nDefault value: 'false'")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-force", doc=InputDocumentation(doc="If set, overwrites old data.\nDefault value: 'false'")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="-debug", doc=InputDocumentation(doc="Enables debug output\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[], container="quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngsdimporthpo_V0_1_0().translate("wdl")

