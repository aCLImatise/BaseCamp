from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Igdiscover_Clonoquery_V0_1_0 = CommandToolBuilder(tool="igdiscover_clonoquery", base_command=["igdiscover", "clonoquery"], inputs=[ToolInput(tag="in_minimum_count", input_type=Int(optional=True), prefix="--minimum-count", doc=InputDocumentation(doc="Discard all rows with count less than N. Default: 1")), ToolInput(tag="in_cdr_three_core", input_type=Int(optional=True), prefix="--cdr3-core", doc=InputDocumentation(doc=":END\nSTART:END defines the non-junction region of CDR3\nsequences. Use negative numbers for END to count from\nthe end. Regions before and after are considered to be\njunction sequence, and for two CDR3s to be considered\nsimilar, at least one of the junctions must be\nidentical. Default: no junction region.")), ToolInput(tag="in_mismatches", input_type=Int(optional=True), prefix="--mismatches", doc=InputDocumentation(doc="No. of allowed mismatches between CDR3 sequences. Can\nalso be a fraction between 0 and 1 (such as 0.15),\ninterpreted relative to the length of the CDR3 (minus\nthe front non-core). Default: 1")), ToolInput(tag="in_aa", input_type=Boolean(optional=True), prefix="--aa", doc=InputDocumentation(doc="Count CDR3 mismatches on amino-acid level. Default:\nCompare nucleotides.")), ToolInput(tag="in_summary", input_type=File(optional=True), prefix="--summary", doc=InputDocumentation(doc="Write summary table to FILE")), ToolInput(tag="in_ref_table", input_type=String(), position=0, doc=InputDocumentation(doc="Reference table with parsed and filtered IgBLAST\nresults (filtered.tab)")), ToolInput(tag="in_query_table", input_type=String(), position=1, doc=InputDocumentation(doc="Query table with IgBLAST results (assigned.tab or\nfiltered.tab)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Clonoquery_V0_1_0().translate("wdl", allow_empty_container=True)

