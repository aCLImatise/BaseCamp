from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean, Float

Bold_Identification_V0_1_0 = CommandToolBuilder(tool="bold_identification", base_command=["bold_identification"], inputs=[ToolInput(tag="in_input_file_name", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="input file name")), ToolInput(tag="in_input_file_format", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="input file format [fasta]")), ToolInput(tag="in_outfile", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="outfile")), ToolInput(tag="in_database_to_search", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="database to search [COX1]")), ToolInput(tag="in_how_many_first", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="how many first top hits will be output. [1]")), ToolInput(tag="in_maximum_submission_time", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="Maximum submission time for a sequence, useful for\nhandling TimeOutException. [4]")), ToolInput(tag="in_continuous_mode_jump", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="continuous mode, jump over the ones already in '-o'\nfile, will resubmit all the remained. use '-cc' to\nalso jump over the ones in '*.NoBoldMatchError.fasta'\nfile. [0]")), ToolInput(tag="in_debug_mode_output", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="debug mode output [False]")), ToolInput(tag="in_zero_dot_zero_dot_two_five", input_type=Float(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bold_Identification_V0_1_0().translate("wdl", allow_empty_container=True)

