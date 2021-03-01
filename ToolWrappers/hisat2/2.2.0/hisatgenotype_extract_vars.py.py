from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Hisatgenotype_Extract_Vars_Py_V0_1_0 = CommandToolBuilder(tool="hisatgenotype_extract_vars.py", base_command=["hisatgenotype_extract_vars.py"], inputs=[ToolInput(tag="in_base", input_type=File(optional=True), prefix="--base", doc=InputDocumentation(doc="base filename for backbone sequence, variants, and\nlinking info (Default: hla)")), ToolInput(tag="in_locus_list", input_type=String(optional=True), prefix="--locus-list", doc=InputDocumentation(doc="A comma-separated list of gene names (default: empty,\nall genes)")), ToolInput(tag="in_inter_gap", input_type=Int(optional=True), prefix="--inter-gap", doc=InputDocumentation(doc="Maximum distance for variants to be in the same\nhaplotype (default: 30)")), ToolInput(tag="in_intra_gap", input_type=Int(optional=True), prefix="--intra-gap", doc=InputDocumentation(doc="Break a haplotype into several haplotypes (default:\n50)")), ToolInput(tag="in_whole_haplotype", input_type=Boolean(optional=True), prefix="--whole-haplotype", doc=InputDocumentation(doc="Include partial alleles (e.g. A_nuc.fasta)")), ToolInput(tag="in_min_var_freq", input_type=Int(optional=True), prefix="--min-var-freq", doc=InputDocumentation(doc="Exclude variants whose freq is below than this value\nin percentage (Default: 0.0)")), ToolInput(tag="in_ext_seq", input_type=Int(optional=True), prefix="--ext-seq", doc=InputDocumentation(doc="Length of extra sequences flanking backbone sequences\n(Default: 0)")), ToolInput(tag="in_left_shift", input_type=Boolean(optional=True), prefix="--leftshift", doc=InputDocumentation(doc="Shift deletions to the leftmost")), ToolInput(tag="in_no_partial", input_type=Boolean(optional=True), prefix="--no-partial", doc=InputDocumentation(doc="Exclude partial alleles, exon-only sequences in HLA")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="also print some statistics to stderr"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hisatgenotype_Extract_Vars_Py_V0_1_0().translate("wdl", allow_empty_container=True)

