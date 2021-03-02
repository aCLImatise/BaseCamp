from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Metagenomics_Py_Krona_V0_1_0 = CommandToolBuilder(tool="metagenomics.py_krona", base_command=["metagenomics.py", "krona"], inputs=[ToolInput(tag="in_query_column", input_type=Int(optional=True), prefix="--queryColumn", doc=InputDocumentation(doc="Column of query id. (default 2)")), ToolInput(tag="in_taxid_column", input_type=Int(optional=True), prefix="--taxidColumn", doc=InputDocumentation(doc="Column of taxonomy id. (default 3)")), ToolInput(tag="in_score_column", input_type=String(optional=True), prefix="--scoreColumn", doc=InputDocumentation(doc="Column of score. (default None)")), ToolInput(tag="in_no_hits", input_type=Boolean(optional=True), prefix="--noHits", doc=InputDocumentation(doc="Include wedge for no hits.")), ToolInput(tag="in_no_rank", input_type=Boolean(optional=True), prefix="--noRank", doc=InputDocumentation(doc="Include no rank assignments.")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_in_tsv", input_type=String(), position=0, doc=InputDocumentation(doc="Input tab delimited file.")), ToolInput(tag="in_db", input_type=String(), position=1, doc=InputDocumentation(doc="Krona taxonomy database directory.")), ToolInput(tag="in_out_html", input_type=String(), position=2, doc=InputDocumentation(doc="Output html report."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagenomics_Py_Krona_V0_1_0().translate("wdl", allow_empty_container=True)

