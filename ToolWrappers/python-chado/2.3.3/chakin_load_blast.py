from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Chakin_Load_Blast_V0_1_0 = CommandToolBuilder(tool="chakin_load_blast", base_command=["chakin", "load", "blast"], inputs=[ToolInput(tag="in_blast_db", input_type=String(optional=True), prefix="--blastdb", doc=InputDocumentation(doc="Name of the database blasted against (must be in the\nChado db table)")), ToolInput(tag="in_blast_db_id", input_type=Int(optional=True), prefix="--blastdb_id", doc=InputDocumentation(doc="ID of the database blasted against (must be in the\nChado db table)")), ToolInput(tag="in_re_name", input_type=File(optional=True), prefix="--re_name", doc=InputDocumentation(doc="Regular expression to extract the feature name from\nthe input file (first capturing group will be used).")), ToolInput(tag="in_query_type", input_type=String(optional=True), prefix="--query_type", doc=InputDocumentation(doc="The feature type (e.g. 'gene', 'mRNA', 'polypeptide',\n'contig') of the query. It must be a valid Sequence\nOntology term.  [default: polypeptide]")), ToolInput(tag="in_match_on_name", input_type=Boolean(optional=True), prefix="--match_on_name", doc=InputDocumentation(doc="Match features using their name instead of their")), ToolInput(tag="in_module", input_type=String(), position=0, doc=InputDocumentation(doc="Output:\nNumber of processed hits")), ToolInput(tag="in_unique_name", input_type=String(), position=0, doc=InputDocumentation(doc="--skip_missing        Skip lines with unknown features or GO id instead of"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Load_Blast_V0_1_0().translate("wdl", allow_empty_container=True)

