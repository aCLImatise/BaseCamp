from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Pnps_Gen_Rank_V0_1_0 = CommandToolBuilder(tool="pnps_gen_rank", base_command=["pnps-gen", "rank"], inputs=[ToolInput(tag="in_taxonomy", input_type=File(optional=True), prefix="--taxonomy", doc=InputDocumentation(doc="Taxonomy file  [required]")), ToolInput(tag="in_snp_data", input_type=File(optional=True), prefix="--snp-data", doc=InputDocumentation(doc="SNP data, output of `snp_parser`  [required]")), ToolInput(tag="in_rank", input_type=Boolean(optional=True), prefix="--rank", doc=InputDocumentation(doc="[superkingdom|kingdom|phylum|class|order|family|genus|species|None]\nTaxonomic rank  [default: order]")), ToolInput(tag="in_min_num", input_type=Int(optional=True), prefix="--min-num", doc=InputDocumentation(doc="RANGE     Minimum number of samples with a pN/pS to")), ToolInput(tag="in_min_cov", input_type=Int(optional=True), prefix="--min-cov", doc=InputDocumentation(doc="RANGE     Minimum coverage for SNPs to be accepted\n[default: 4]")), ToolInput(tag="in_tax_on_ids", input_type=Int(optional=True), prefix="--taxon_ids", doc=InputDocumentation(doc="Taxon IDs to include  [default: 2]")), ToolInput(tag="in_unstack", input_type=Boolean(optional=True), prefix="--unstack", doc=InputDocumentation(doc="Samples are not in columns but as an array\n[default: False]")), ToolInput(tag="in_lineage", input_type=Boolean(optional=True), prefix="--lineage", doc=InputDocumentation(doc="Use lineage string instead of taxon_id\n[default: False]")), ToolInput(tag="in_only_ps", input_type=Boolean(optional=True), prefix="--only-ps", doc=InputDocumentation(doc="Only calculate pS values  [default: False]")), ToolInput(tag="in_only_pn", input_type=Boolean(optional=True), prefix="--only-pn", doc=InputDocumentation(doc="Only calculate pN values  [default: False]")), ToolInput(tag="in_txt_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pnps_Gen_Rank_V0_1_0().translate("wdl")

