from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Or02_Find_Orthologs_Py_V0_1_0 = CommandToolBuilder(tool="or02_find_orthologs.py", base_command=["or02_find_orthologs.py"], inputs=[ToolInput(tag="in_sql_db", input_type=Int(optional=True), prefix="-sqldb", doc=InputDocumentation(doc="name of SQLite3 database")), ToolInput(tag="in_blast_db", input_type=String(optional=True), prefix="-blastdb", doc=InputDocumentation(doc="name of first BLAST database if alias database was used")), ToolInput(tag="in_r_blast_file", input_type=String(), position=0, doc=InputDocumentation(doc="Input BLAST file with the following columns: qseqid sseqid\npident length mismatch gapopen qstart qend sstart send\nevalue bitscore gaps")), ToolInput(tag="in_f_blast_file", input_type=String(), position=1, doc=InputDocumentation(doc="Filtered First BLAST file with the following columns:\nqseqid sseqid pident length mismatch gapopen qstart qend\nsstart send evalue bitscore gaps document")), ToolInput(tag="in_outfile", input_type=String(), position=2, doc=InputDocumentation(doc="Name of output")), ToolInput(tag="in_hit_num", input_type=String(), position=3, doc=InputDocumentation(doc="Integer, Number of hits to include")), ToolInput(tag="in_coverage", input_type=String(), position=4, doc=InputDocumentation(doc="Integer, Coverage of alignment (percentage)"))], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Or02_Find_Orthologs_Py_V0_1_0().translate("wdl")

