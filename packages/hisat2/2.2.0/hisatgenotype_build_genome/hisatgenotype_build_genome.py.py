from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Hisatgenotype_Build_Genome_Py_V0_1_0 = CommandToolBuilder(tool="hisatgenotype_build_genome.py", base_command=["hisatgenotype_build_genome.py"], inputs=[ToolInput(tag="in_base_fname", input_type=File(optional=True), prefix="--base-fname", doc=InputDocumentation(doc="base filename for genotype genome (default:\ngenotype_genome)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads")), ToolInput(tag="in_database_list", input_type=String(optional=True), prefix="--database-list", doc=InputDocumentation(doc="A comma-separated list of databases (default:\nhla,codis,cyp)")), ToolInput(tag="in_common_var", input_type=Boolean(optional=True), prefix="--commonvar", doc=InputDocumentation(doc="Include common variants from dbSNP")), ToolInput(tag="in_clin_var", input_type=Boolean(optional=True), prefix="--clinvar", doc=InputDocumentation(doc="Include variants from ClinVar database")), ToolInput(tag="in_inter_gap", input_type=String(optional=True), prefix="--inter-gap", doc=InputDocumentation(doc="Maximum distance for variants to be in the same\nhaplotype")), ToolInput(tag="in_intra_gap", input_type=String(optional=True), prefix="--intra-gap", doc=InputDocumentation(doc="Break a haplotype into several haplotypes")), ToolInput(tag="in_aligner", input_type=Int(optional=True), prefix="--aligner", doc=InputDocumentation(doc="Aligner (default: hisat2)")), ToolInput(tag="in_linear_index", input_type=Boolean(optional=True), prefix="--linear-index", doc=InputDocumentation(doc="Build linear index")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="also print some statistics to stderr"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisatgenotype_Build_Genome_Py_V0_1_0().translate("wdl", allow_empty_container=True)

