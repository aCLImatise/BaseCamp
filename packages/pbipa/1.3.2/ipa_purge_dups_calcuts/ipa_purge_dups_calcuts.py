from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ipa_Purge_Dups_Calcuts_V0_1_0 = CommandToolBuilder(tool="ipa_purge_dups_calcuts", base_command=["ipa_purge_dups_calcuts"], inputs=[ToolInput(tag="in_float_minimum_depth", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="FLOAT    minimum depth count fraction to maximum depth count [.1]")), ToolInput(tag="in_int_lower_bound", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="INT      lower bound for read depth")), ToolInput(tag="in_int_transition_haploid", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="INT      transition between haploid and diploid")), ToolInput(tag="in_int_upper_bound", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="INT      upper bound for read depth")), ToolInput(tag="in_treat_haploid_others", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="treat as haploid assembly or diploid assembly, 1: haploid, others: diploid [0]")), ToolInput(tag="in_options", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_stat", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pbipa:1.3.2--hee625c5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ipa_Purge_Dups_Calcuts_V0_1_0().translate("wdl")

