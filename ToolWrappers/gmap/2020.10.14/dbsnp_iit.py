from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Dbsnp_Iit_V0_1_0 = CommandToolBuilder(tool="dbsnp_iit", base_command=["dbsnp_iit"], inputs=[ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_allele_freq_sum_not_one", input_type=Int(), position=0, doc=InputDocumentation(doc="DuplicateObserved")), ToolInput(tag="in_flank_mismatch_genome_equal", input_type=String(), position=1, doc=InputDocumentation(doc="FlankMismatchGenomeLonger")), ToolInput(tag="in_flank_mismatch_genome_shorter", input_type=String(), position=2, doc=InputDocumentation(doc="InconsistentAlleles")), ToolInput(tag="in_mixed_observed", input_type=String(), position=3, doc=InputDocumentation(doc="MultipleAlignments")), ToolInput(tag="in_named_deletion_zero_span", input_type=String(), position=4, doc=InputDocumentation(doc="NamedInsertionNonzeroSpan")), ToolInput(tag="in_observed_mismatch", input_type=String(), position=5, doc=InputDocumentation(doc="ObservedTooLong")), ToolInput(tag="in_observed_wrong_format", input_type=String(), position=6, doc=InputDocumentation(doc="RefAlleleMismatch")), ToolInput(tag="in_ref_allele_rev_comp", input_type=String(), position=7, doc=InputDocumentation(doc="SingleAlleleFreq")), ToolInput(tag="in_single_class_longer_span", input_type=String(), position=8, doc=InputDocumentation(doc="SingleClassQuadAllelic"))], outputs=[], container="quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbsnp_Iit_V0_1_0().translate("wdl")

