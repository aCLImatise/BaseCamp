from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Int, String, Boolean

Targetfinder_Threads_Pl_V0_1_0 = CommandToolBuilder(tool="targetfinder_threads.pl", base_command=["targetfinder_threads.pl"], inputs=[ToolInput(tag="in_input_small_rna", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Input small RNA sequences file (FASTA-format)")), ToolInput(tag="in_target_sequence_database", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="Target sequence database file (FASTA-format)")), ToolInput(tag="in_output_file_stores", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file. Stores collective results")), ToolInput(tag="in_prediction_score_value", input_type=Float(optional=True), prefix="-c", doc=InputDocumentation(doc="Prediction score cutoff value (DEFAULT = 4)")), ToolInput(tag="in_number_threadscpus_use", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Number of TargetFinder threads/CPUs to use (DEFAULT = 1)")), ToolInput(tag="in_output_format_format", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Output format for small RNA-target pairs (DEFAULT = 'classic')\nAvailable options: 'classic' (Original TargetFinder base-pairing format)\n'gff'     (Generic Feature Format)\n'json'    (JavaScript Object Notation)\n'table'   (Tab-deliminated Format)")), ToolInput(tag="in_search_reverse_strand", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Search reverse strand for targets?. Use this option if the database is genomic DNA.")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_stores", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_stores", type_hint=File()), doc=OutputDocumentation(doc="Output file. Stores collective results"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Targetfinder_Threads_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

