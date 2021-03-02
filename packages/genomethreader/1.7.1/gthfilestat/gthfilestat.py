from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean

Gthfilestat_V0_1_0 = CommandToolBuilder(tool="gthfilestat", base_command=["gthfilestat"], inputs=[ToolInput(tag="in_min_alignment_score", input_type=Float(optional=True), prefix="-minalignmentscore", doc=InputDocumentation(doc="the minimum alignment score for spliced alignments to be\nincluded into the set of spliced alignments\ndefault: 0.00")), ToolInput(tag="in_max_alignment_score", input_type=Float(optional=True), prefix="-maxalignmentscore", doc=InputDocumentation(doc="the maximum alignment score for spliced alignments to be\nincluded into the set of spliced alignments\ndefault: 1.00")), ToolInput(tag="in_min_coverage", input_type=Boolean(optional=True), prefix="-mincoverage", doc=InputDocumentation(doc="set the minimum coverage for spliced alignments to be\nincluded into the set of spliced alignments\ndefault: 0.00")), ToolInput(tag="in_max_coverage", input_type=Boolean(optional=True), prefix="-maxcoverage", doc=InputDocumentation(doc="set the maximum coverage for spliced alignments to be\nincluded into the set of spliced alignments\ndefault: 9999.99")), ToolInput(tag="in_be_verbosedefault_no", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="be verbose\ndefault: no")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="display version information and exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gthfilestat_V0_1_0().translate("wdl", allow_empty_container=True)

