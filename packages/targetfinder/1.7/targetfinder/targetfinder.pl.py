from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String, Float, Boolean

Targetfinder_Pl_V0_1_0 = CommandToolBuilder(tool="targetfinder.pl", base_command=["targetfinder.pl"], inputs=[ToolInput(tag="in_small_rna_sequence", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Small RNA sequence (RNA or DNA, 5'->3')")), ToolInput(tag="in_target_sequence_database", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="Target sequence database file (FASTA-format)")), ToolInput(tag="in_query_sequence_name", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="Query sequence name (DEFAULT = 'query')")), ToolInput(tag="in_prediction_score_value", input_type=Float(optional=True), prefix="-c", doc=InputDocumentation(doc="Prediction score cutoff value (DEFAULT = 4)")), ToolInput(tag="in_threads_parallel_smithwaterman", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Threads for parallel Smith-Waterman searches (DEFAULT = 1)")), ToolInput(tag="in_output_format_format", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Output format for small RNA-target pairs (DEFAULT = 'classic')\nAvailable options: 'classic' (Original TargetFinder base-pairing format)\n'gff'     (Generic Feature Format)\n'json'    (JavaScript Object Notation)\n'table'   (Tab-deliminated Format)")), ToolInput(tag="in_search_reverse_strand", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Search reverse strand for targets?. Use this option if the database is genomic DNA.")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Targetfinder_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

