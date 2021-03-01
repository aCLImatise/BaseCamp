from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Consolidate_Vcfs_Pl_V0_1_0 = CommandToolBuilder(tool="consolidate_vcfs.pl", base_command=["consolidate_vcfs.pl"], inputs=[ToolInput(tag="in_snv_abundance_ratio", input_type=Int(optional=True), prefix="--snv-abundance-ratio", doc=InputDocumentation(doc="/opt/bcftools/bcftools")), ToolInput(tag="in_vcf_split", input_type=Boolean(optional=True), prefix="--vcfsplit", doc=InputDocumentation(doc="[REQUIRED]\nMultiple list of key/value pair. Multiple .gz files can be input.\nExample with 3 gz files: --vcfsplit 'name=/path/vcf1.gz' --vcfsplit\n'name=/path/vcf2.gz' --vcfsplit 'name=/path/vcf3.gz'.")), ToolInput(tag="in_m_pile_up", input_type=Boolean(optional=True), prefix="--mpileup", doc=InputDocumentation(doc="[REQUIRED]\nMultiple list of key/value pair. Multiple .gz files can be input.\nExample with 3 gz files: --mpileup 'name=/path/vcf1.gz' --mpileup\n'name=/path/vcf2.gz' --mpileup 'name=/path/vcf3.gz'.")), ToolInput(tag="in_coverage_cut_off", input_type=Boolean(optional=True), prefix="--coverage-cutoff", doc=InputDocumentation(doc="[REQUIRED]\nThe cutoff for coverage to include a reference base (default: 1).")), ToolInput(tag="in_min_mean_mapping", input_type=Boolean(optional=True), prefix="--min-mean-mapping", doc=InputDocumentation(doc="[REQUIRED]\nMean mapping quality of observed alternate alleles.")), ToolInput(tag="in_v_one", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Consolidate_Vcfs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

