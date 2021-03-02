from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Varscan_Pileup2Snp_V0_1_0 = CommandToolBuilder(tool="varscan_pileup2snp", base_command=["varscan", "pileup2snp"], inputs=[ToolInput(tag="in_min_coverage", input_type=Boolean(optional=True), prefix="--min-coverage", doc=InputDocumentation(doc="Minimum read depth at a position to make a call [8]")), ToolInput(tag="in_min_reads_two", input_type=Boolean(optional=True), prefix="--min-reads2", doc=InputDocumentation(doc="Minimum supporting reads at a position to call variants [2]")), ToolInput(tag="in_min_avg_qual", input_type=Boolean(optional=True), prefix="--min-avg-qual", doc=InputDocumentation(doc="Minimum base quality at a position to count a read [15]")), ToolInput(tag="in_min_var_freq", input_type=Boolean(optional=True), prefix="--min-var-freq", doc=InputDocumentation(doc="Minimum variant allele frequency threshold [0.01]")), ToolInput(tag="in_min_freq_for_hom", input_type=Boolean(optional=True), prefix="--min-freq-for-hom", doc=InputDocumentation(doc="Minimum frequency to call homozygote [0.75]")), ToolInput(tag="in_p_value", input_type=Boolean(optional=True), prefix="--p-value", doc=InputDocumentation(doc="Default p-value threshold for calling variants [99e-02]")), ToolInput(tag="in_variants", input_type=Boolean(optional=True), prefix="--variants", doc=InputDocumentation(doc="Report only variant (SNP/indel) positions [0]")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pile_up_two_cns", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_pile_up", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varscan_Pileup2Snp_V0_1_0().translate("wdl", allow_empty_container=True)

