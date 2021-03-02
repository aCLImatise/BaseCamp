from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktclassifyblast_V0_1_0 = CommandToolBuilder(tool="ktClassifyBLAST", base_command=["ktClassifyBLAST"], inputs=[ToolInput(tag="in_blast_output", input_type=String(), position=0, doc=InputDocumentation(doc="File containing BLAST results in tabular format ('Hit table\n(text)' when downloading from NCBI). If running BLAST locally,\nsubject IDs in the local database must contain accession\nnumbers, either bare or in the fourth field of the\npipe-separated ('gi|12345|xx|ABC123.1|') format.\n_________")), ToolInput(tag="in_e_value_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[-b]           Use bit score for average scores instead of log[10] e-value.")), ToolInput(tag="in_databases_dot", input_type=String(), position=0, doc=InputDocumentation(doc="________")), ToolInput(tag="in_query_id", input_type=String(), position=0, doc=InputDocumentation(doc="The query ID as it appears in the BLAST results.")), ToolInput(tag="in_taxid", input_type=String(), position=1, doc=InputDocumentation(doc="The NCBI taxonomy ID the query was assigned to (or -1 if it has no\nhits).")), ToolInput(tag="in_score", input_type=String(), position=2, doc=InputDocumentation(doc="The score of the assignment(s); by default, the average E-value of\n'best' hits (see -p, -b).")), ToolInput(tag="in_count", input_type=String(), position=3, doc=InputDocumentation(doc="The number of assignments."))], outputs=[], container="quay.io/biocontainers/krona:2.8--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktclassifyblast_V0_1_0().translate("wdl")

