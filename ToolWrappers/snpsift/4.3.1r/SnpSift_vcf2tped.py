from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Snpsift_Vcf2Tped_V0_1_0 = CommandToolBuilder(tool="SnpSift_vcf2tped", base_command=["SnpSift", "vcf2tped"], inputs=[ToolInput(tag="in_force_overwrite_new", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": Force. Overwrite new files if they exist. Default: false")), ToolInput(tag="in_num", input_type=Boolean(optional=True), prefix="-num", doc=InputDocumentation(doc=": Use only numbers {1, 2, 3, 4} instead of bases {A, C, G, T}. Default: false")), ToolInput(tag="in_only_snp", input_type=Boolean(optional=True), prefix="-onlySnp", doc=InputDocumentation(doc=": Use only SNPs when converting VCF to TPED. Default: false")), ToolInput(tag="in_only_bi_allelic", input_type=Boolean(optional=True), prefix="-onlyBiAllelic", doc=InputDocumentation(doc=": Use only bi-allelic variants. Default: false")), ToolInput(tag="in_use_missing", input_type=Boolean(optional=True), prefix="-useMissing", doc=InputDocumentation(doc=": Use entries with missing genotypes (otherwise they are filtered out). Default: true")), ToolInput(tag="in_use_missing_ref", input_type=Boolean(optional=True), prefix="-useMissingRef", doc=InputDocumentation(doc=": Use entries with missing genotypes marking them as 'reference' instead of 'missing'. Default: false")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_file_do_ttf_am", input_type=File(), position=0, doc=InputDocumentation(doc=": File with genotypes and groups information (in PLINK's TFAM format)")), ToolInput(tag="in_file_dot_vcf", input_type=File(), position=1, doc=InputDocumentation(doc=": A VCF file (variants and genotype data)")), ToolInput(tag="in_output_name", input_type=String(), position=2, doc=InputDocumentation(doc=": Base name for the new TPED and TFAM files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Vcf2Tped_V0_1_0().translate("wdl", allow_empty_container=True)

