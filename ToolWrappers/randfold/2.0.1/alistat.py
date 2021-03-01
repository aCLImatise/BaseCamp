from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Alistat_V0_1_0 = CommandToolBuilder(tool="alistat", base_command=["alistat"], inputs=[ToolInput(tag="in_report_persequence_info", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": report per-sequence info, not just a summary")), ToolInput(tag="in_fast_estimate_average", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": fast: estimate average %id by sampling (not compatible with -a)")), ToolInput(tag="in_quiet_suppress_verbose", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": quiet: suppress verbose header")), ToolInput(tag="in_consensus", input_type=File(optional=True), prefix="--consensus", doc=InputDocumentation(doc=": write majority rule consensus sequence(s) in FASTA\nformat to file <f>")), ToolInput(tag="in_ident_mx", input_type=File(optional=True), prefix="--identmx", doc=InputDocumentation(doc=": save a report on all NxN pairwise identities to file <f>")), ToolInput(tag="in_in_format", input_type=File(optional=True), prefix="--informat", doc=InputDocumentation(doc=": specify alignment file format <s>\nallowed formats: SELEX, MSF, Clustal, a2m, PHYLIP\n")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alistat_V0_1_0().translate("wdl", allow_empty_container=True)

