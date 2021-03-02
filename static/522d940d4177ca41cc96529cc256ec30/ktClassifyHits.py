from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktclassifyhits_V0_1_0 = CommandToolBuilder(tool="ktClassifyHits", base_command=["ktClassifyHits"], inputs=[ToolInput(tag="in_hits", input_type=String(), position=0, doc=InputDocumentation(doc="Tabular file whose fields are [query, subject, score]. Subject must\nbe an accession or contain one in the fourth field of pipe notation\n(e.g. 'gi|12345|xx|ABC123.1|'. The subject and score can be omitted to\ninclude a query that has no hits, which will be assigned a taxonomy ID\nof -1.\n_________")), ToolInput(tag="in_query_id", input_type=String(), position=0, doc=InputDocumentation(doc="The query ID as it appears in the input.")), ToolInput(tag="in_taxid", input_type=String(), position=1, doc=InputDocumentation(doc="The NCBI taxonomy ID the query was assigned to (or -1 if it has no\nhits).")), ToolInput(tag="in_score", input_type=String(), position=2, doc=InputDocumentation(doc="The score of the assignment(s); by default, the average E-value of\n'best' hits (see -p, -b).")), ToolInput(tag="in_count", input_type=String(), position=3, doc=InputDocumentation(doc="The number of assignments."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktclassifyhits_V0_1_0().translate("wdl", allow_empty_container=True)

