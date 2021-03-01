from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float

Gubbins_V0_1_0 = CommandToolBuilder(tool="gubbins", base_command=["gubbins"], inputs=[ToolInput(tag="in_newick_tree_file", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Newick tree file")), ToolInput(tag="in_vcf_file", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="VCF file")), ToolInput(tag="in_original_multifasta_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Original Multifasta file")), ToolInput(tag="in_min_snps_identifying", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Min SNPs for identifying a recombination block")), ToolInput(tag="in_min_window_size", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Min window size")), ToolInput(tag="in_max_window_size", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Max window size")), ToolInput(tag="in_two_dot_four_dot_one", input_type=Float(), position=0, doc=InputDocumentation(doc="-r    detect recombinations mode"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gubbins_V0_1_0().translate("wdl", allow_empty_container=True)

