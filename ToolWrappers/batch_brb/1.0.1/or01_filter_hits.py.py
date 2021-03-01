from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Or01_Filter_Hits_Py_V0_1_0 = CommandToolBuilder(tool="or01_filter_hits.py", base_command=["or01_filter_hits.py"], inputs=[ToolInput(tag="in_f_blast_file", input_type=String(), position=0, doc=InputDocumentation(doc="First BLAST results file with columns: qseqid, sseqid, pident,\nlength, mismatch, gapopen, qstart, qend, sstart, send, evalue,\nbitscore, gaps, qcovs, qcovhsp, qlen, slen")), ToolInput(tag="in_outfile", input_type=String(), position=1, doc=InputDocumentation(doc="Name of output")), ToolInput(tag="in_hit_num", input_type=String(), position=2, doc=InputDocumentation(doc="Integer, Number of hits to include")), ToolInput(tag="in_coverage", input_type=String(), position=3, doc=InputDocumentation(doc="Integer, Coverage of alignment (percentage)")), ToolInput(tag="in_database", input_type=String(), position=4, doc=InputDocumentation(doc="Name of SQLite3 database")), ToolInput(tag="in_type", input_type=String(), position=5, doc=InputDocumentation(doc="Type of data; nucl or prot"))], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Or01_Filter_Hits_Py_V0_1_0().translate("wdl")

